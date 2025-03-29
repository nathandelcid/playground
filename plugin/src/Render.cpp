#include "Render/Render.h"
#include "Render/PluginProcessor.h"
#include "Render/PluginEditor.h"
#include <algorithm>
#include <string>
// #include <juce_audio_formats/juce_audio_formats.h>

namespace Render {
void Render::emitPluginList() {
    juce::AudioPluginFormatManager formatManager; // Create a manager that handles different plugin formats (VST, AU, etc.)
    juce::OwnedArray<juce::PluginDescription> pluginDescriptions;
    formatManager.addDefaultFormats(); // Add VST, AU, VST3, etc. support
    juce::FileSearchPath searchPath;

    for (auto* format : formatManager.getFormats())
    {
        searchPath.addPath(format->getDefaultLocationsToSearch());
        std::cout << "Searching in: " << format->getName() << " - " 
                  << format->getDefaultLocationsToSearch().toString() << std::endl;
    }

    // std::cout << "\nFound " << pluginDescriptions.size() << " plugins:\n" << std::endl;

    for (auto* format : formatManager.getFormats()) // Iterates through all plugin formats (VST, AU, etc.)
    {
        if (format->canScanForPlugins())  // Check if format supports scanning
        {
            // Get list of potential plugin files
            auto files = format->searchPathsForPlugins(searchPath, true);
            // Try to load each file as a plugin
            for (auto& file : files)
            {
                format->findAllTypesForFile(pluginDescriptions, file);
            }
        }
    }

    std::cout << "\nFound " << pluginDescriptions.size() << " plugins:\n" << std::endl;

    for (auto* desc : pluginDescriptions)
    {
        std::cout << "Name: " << desc->name << std::endl
                  << "Format: " << desc->pluginFormatName << std::endl
                  << "Manufacturer: " << desc->manufacturerName << std::endl
                  << "File: " << desc->fileOrIdentifier << std::endl
                  << "Category: " << desc->category << std::endl
                  << "Version: " << desc->version << std::endl
                  << "-----------------------------------------" << std::endl;
    }



    /*
    juce::OwnedArray<juce::PluginDescription> pluginDescriptions; // Container for found plugin descriptions
    juce::KnownPluginList pluginList;  // Manages the list of known plugins
    
    juce::FileSearchPath searchPath;
    */

    
        
}

void Render::loadPlugin(std::string pluginName) {
    juce::AudioPluginFormatManager formatManager;
    juce::PluginDescription* desc = nullptr;
    
}
}