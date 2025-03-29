#pragma once

#include "Render/PluginProcessor.h"
#include "Render/Render.h"

namespace Render
{
    class AudioPluginAudioProcessorEditor final : public juce::AudioProcessorEditor,
                                                  private juce::ComboBox::Listener,
                                                  private juce::Button::Listener
    {
    public:
        explicit AudioPluginAudioProcessorEditor(AudioPluginAudioProcessor &);
        ~AudioPluginAudioProcessorEditor() override;

        //==============================================================================
        void paint(juce::Graphics &) override;
        void resized() override;
        void emitPluginList();

    private:
        AudioPluginAudioProcessor &processorRef;
        juce::WebBrowserComponent webView;
        juce::ComboBox pluginSelector;
        juce::TextButton openPluginButton;
        juce::OwnedArray<juce::PluginDescription> pluginDescriptions;

        // Order these members carefully for proper cleanup
        std::unique_ptr<juce::DialogWindow> pluginWindow; // Must be destroyed before loadedPlugin
        std::unique_ptr<juce::AudioPluginInstance> loadedPlugin;
        std::unique_ptr<juce::AudioPluginFormatManager> formatManager;

        void comboBoxChanged(juce::ComboBox *comboBoxThatHasChanged) override;
        void buttonClicked(juce::Button *button) override;
        bool loadSelectedPlugin();
        void showPluginEditor();
        void updateButtonText();

        JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(AudioPluginAudioProcessorEditor)
    };
}
