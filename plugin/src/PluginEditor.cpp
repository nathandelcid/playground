#include "Render/PluginProcessor.h"
#include "Render/PluginEditor.h"
#include "Render/Render.h"

namespace Render
{
    //==============================================================================
    AudioPluginAudioProcessorEditor::AudioPluginAudioProcessorEditor(AudioPluginAudioProcessor &p)
        : AudioProcessorEditor(&p), processorRef(p),
          webView{juce::WebBrowserComponent::Options{}}
    {
        formatManager = std::make_unique<juce::AudioPluginFormatManager>();

        addAndMakeVisible(pluginSelector);
        addAndMakeVisible(openPluginButton);

        pluginSelector.addListener(this);
        openPluginButton.addListener(this);
        openPluginButton.setEnabled(false);
        openPluginButton.setButtonText("No Plugin Selected");

        emitPluginList();
        // juce::ignoreUnused (processorRef);
        // Make sure that before the constructor has finished, you've set the
        // editor's size to whatever you need it to be.
        setSize(400, 300);
    }

    void AudioPluginAudioProcessorEditor::emitPluginList()
    {
        // Create a new format manager for scanning
        formatManager = std::make_unique<juce::AudioPluginFormatManager>();
        pluginDescriptions.clear();

        // Add default formats
        formatManager->addDefaultFormats();
        juce::FileSearchPath searchPath;

        for (auto *format : formatManager->getFormats())
        {
            searchPath.addPath(format->getDefaultLocationsToSearch());
            std::cout << "Searching in: " << format->getName() << " - "
                      << format->getDefaultLocationsToSearch().toString() << std::endl;
        }

        pluginSelector.clear();

        for (auto *format : formatManager->getFormats())
        {
            if (format->canScanForPlugins())
            {
                auto files = format->searchPathsForPlugins(searchPath, true);
                for (auto &file : files)
                {
                    format->findAllTypesForFile(pluginDescriptions, file);
                }
            }
        }

        pluginSelector.addItem("Select a plugin...", 1); // Default item
        int index = 2;                                   // Start from 2 since 1 is our default item
        for (auto *desc : pluginDescriptions)
        {
            pluginSelector.addItem(desc->name, index++);
        }

        // Select the default item
        pluginSelector.setSelectedId(1);

        std::cout << "\nFound " << pluginDescriptions.size() << " plugins:\n"
                  << std::endl;

        for (auto *desc : pluginDescriptions)
        {
            std::cout << "Name: " << desc->name << std::endl
                      << "Format: " << desc->pluginFormatName << std::endl
                      << "Manufacturer: " << desc->manufacturerName << std::endl
                      << "File: " << desc->fileOrIdentifier << std::endl
                      << "Category: " << desc->category << std::endl
                      << "Version: " << desc->version << std::endl
                      << "-----------------------------------------" << std::endl;
        }
    }

    bool AudioPluginAudioProcessorEditor::loadSelectedPlugin()
    {
        int selectedId = pluginSelector.getSelectedId();
        if (selectedId <= 1)
            return false; // No plugin selected

        auto *selectedPlugin = pluginDescriptions[selectedId - 2];
        juce::String errorMessage;

        // Release any previously loaded plugin
        if (loadedPlugin != nullptr)
        {
            loadedPlugin->releaseResources();
        }

        // Create new plugin instance
        loadedPlugin = formatManager->createPluginInstance(*selectedPlugin,
                                                           processorRef.getSampleRate(),
                                                           processorRef.getBlockSize(),
                                                           errorMessage);

        if (loadedPlugin != nullptr)
        {
            loadedPlugin->prepareToPlay(processorRef.getSampleRate(), processorRef.getBlockSize());
            std::cout << "Successfully loaded plugin: " << selectedPlugin->name << std::endl;
            return true;
        }
        else
        {
            std::cout << "Failed to load plugin: " << errorMessage << std::endl;
            return false;
        }
    }

    void AudioPluginAudioProcessorEditor::showPluginEditor()
    {
        if (loadedPlugin != nullptr && loadedPlugin->hasEditor())
        {
            // If window exists, close it first
            if (pluginWindow != nullptr)
            {
                pluginWindow->closeButtonPressed();
                pluginWindow.reset();
            }

            // Create new window
            pluginWindow = std::make_unique<juce::DialogWindow>(
                loadedPlugin->getName(), // name
                juce::Colours::darkgrey, // background color
                true,                    // escape key closes
                true);                   // add to desktop

            // Set the content component after creating the window
            auto *editor = loadedPlugin->createEditor();
            if (editor != nullptr)
            {
                pluginWindow->setContentOwned(editor, true);
                pluginWindow->centreWithSize(800, 600);
                pluginWindow->setVisible(true);
            }
            else
            {
                std::cout << "Failed to create editor for plugin: " << loadedPlugin->getName() << std::endl;
            }
        }
    }

    AudioPluginAudioProcessorEditor::~AudioPluginAudioProcessorEditor()
    {
        // Close and cleanup the plugin window
        if (pluginWindow != nullptr)
        {
            pluginWindow->closeButtonPressed();
            pluginWindow.reset();
        }

        // Release the loaded plugin
        if (loadedPlugin != nullptr)
        {
            loadedPlugin->releaseResources();
            loadedPlugin.reset();
        }

        // Clear the format manager
        formatManager.reset();
    }

    //==============================================================================
    void AudioPluginAudioProcessorEditor::paint(juce::Graphics &g)
    {
        // (Our component is opaque, so we must completely fill the background with a solid colour)
        g.fillAll(getLookAndFeel().findColour(juce::ResizableWindow::backgroundColourId));

        g.setColour(juce::Colours::white);
        g.setFont(15.0f);
        g.drawFittedText("Hello World!", getLocalBounds(), juce::Justification::centred, 1);
    }

    void AudioPluginAudioProcessorEditor::resized()
    {
        auto area = getLocalBounds();
        auto topArea = area.removeFromTop(30).reduced(5);

        // Layout the combo box and button side by side
        pluginSelector.setBounds(topArea.removeFromLeft(area.getWidth() * 0.7));
        openPluginButton.setBounds(topArea);
    }

    void AudioPluginAudioProcessorEditor::comboBoxChanged(juce::ComboBox *comboBoxThatHasChanged)
    {
        if (comboBoxThatHasChanged == &pluginSelector)
        {
            if (loadSelectedPlugin())
            {
                updateButtonText();
                openPluginButton.setEnabled(true);
            }
            else
            {
                openPluginButton.setEnabled(false);
                openPluginButton.setButtonText("No Plugin Selected");
            }
        }
    }

    void AudioPluginAudioProcessorEditor::buttonClicked(juce::Button *button)
    {
        if (button == &openPluginButton)
        {
            showPluginEditor();
        }
    }

    void AudioPluginAudioProcessorEditor::updateButtonText()
    {
        if (loadedPlugin != nullptr)
        {
            openPluginButton.setButtonText("Open " + loadedPlugin->getName() + " GUI");
        }
    }
}