juce_add_plugin(Render
    COMPANY_NAME           Harmoniq
    IS_SYNTH              FALSE
    NEEDS_MIDI_INPUT      TRUE
    NEEDS_MIDI_OUTPUT     TRUE
    PLUGIN_MANUFACTURER_CODE HQAI
    PLUGIN_CODE           HQMA
    FORMATS              AU VST3 Standalone
    NEEDS_WEBVIEW2        TRUE
)

# This is the target that is specifically building the audio plugin (VST3. AU, Standalone)
target_sources(Render 
    PRIVATE src/PluginEditor.cpp src/PluginProcessor.cpp src/Render.cpp)

target_include_directories(Render PRIVATE include)

target_link_libraries(Render
    PRIVATE
        juce::juce_audio_utils
        juce::juce_audio_processors
        juce::juce_core
    PUBLIC
        juce::juce_recommended_config_flags
        juce::juce_recommended_lto_flags
        juce::juce_recommended_warning_flags
)

target_compile_definitions(Render PUBLIC
    JUCE_WEB_BROWSER=1
    JUCE_USE_CURL=0
    JUCE_VST3_CAN_REPLACE_VST2=0
    JUCE_USE_WEBVIEW2=1
    JUCE_PLUGINHOST_VST3=1
    # JUCE_MAC=1
    # JUCE_PLUGINHOST_AU=1
    )

add_library(RenderScanner STATIC
    src/Render.cpp
)

target_include_directories(RenderScanner 
    PUBLIC 
        include
)

target_link_libraries(RenderScanner
    PUBLIC
        juce::juce_audio_processors
        juce::juce_audio_formats
)

# Now create the Tester executable
add_executable(Tester src/main.cpp)

target_include_directories(Tester
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Link Tester with the scanner library instead of the plugin
target_link_libraries(Tester
    PRIVATE
        RenderScanner
        juce::juce_audio_processors
        juce::juce_audio_formats
)

target_compile_definitions(RenderScanner
    PUBLIC
        JUCE_PLUGINHOST_VST3=1  # Enable VST3 plugin hosting
        # JUCE_PLUGINHOST_AU=1    # Enable Audio Unit plugin hosting (for macOS)
        JUCE_STANDALONE_APPLICATION=1  # Required for standalone applications
)

# And for the Tester executable
target_compile_definitions(Tester
    PRIVATE
        JUCE_PLUGINHOST_VST3=1
        #JUCE_PLUGINHOST_AU=1
        JUCE_STANDALONE_APPLICATION=1
)