# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# compile CXX with /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
CXX_DEFINES = -DJUCE_GLOBAL_MODULE_SETTINGS_INCLUDED=1 -DJUCE_MODULE_AVAILABLE_juce_audio_basics=1 -DJUCE_MODULE_AVAILABLE_juce_audio_devices=1 -DJUCE_MODULE_AVAILABLE_juce_audio_formats=1 -DJUCE_MODULE_AVAILABLE_juce_audio_plugin_client=1 -DJUCE_MODULE_AVAILABLE_juce_audio_processors=1 -DJUCE_MODULE_AVAILABLE_juce_audio_utils=1 -DJUCE_MODULE_AVAILABLE_juce_core=1 -DJUCE_MODULE_AVAILABLE_juce_data_structures=1 -DJUCE_MODULE_AVAILABLE_juce_events=1 -DJUCE_MODULE_AVAILABLE_juce_graphics=1 -DJUCE_MODULE_AVAILABLE_juce_gui_basics=1 -DJUCE_MODULE_AVAILABLE_juce_gui_extra=1 -DJUCE_PLUGINHOST_VST3=1 -DJUCE_STANDALONE_APPLICATION=JucePlugin_Build_Standalone -DJUCE_USE_CURL=0 -DJUCE_USE_WEBVIEW2=1 -DJUCE_VST3_CAN_REPLACE_VST2=0 -DJUCE_WEB_BROWSER=1 -DJucePlugin_AAXCategory=0 -DJucePlugin_AAXDisableBypass=0 -DJucePlugin_AAXDisableMultiMono=0 -DJucePlugin_AAXIdentifier=com.Harmoniq.Render -DJucePlugin_AAXManufacturerCode=JucePlugin_ManufacturerCode -DJucePlugin_AAXProductId=JucePlugin_PluginCode -DJucePlugin_ARACompatibleArchiveIDs=\"\" -DJucePlugin_ARAContentTypes=0 -DJucePlugin_ARADocumentArchiveID=\"com.Harmoniq.Render.aradocumentarchive.1\" -DJucePlugin_ARAFactoryID=\"com.Harmoniq.Render.arafactory.0.0.1\" -DJucePlugin_ARATransformationFlags=0 -DJucePlugin_AUExportPrefix=RenderAU -DJucePlugin_AUExportPrefixQuoted=\"RenderAU\" -DJucePlugin_AUMainType="'aumf'" -DJucePlugin_AUManufacturerCode=JucePlugin_ManufacturerCode -DJucePlugin_AUSubType=JucePlugin_PluginCode -DJucePlugin_Build_AAX=0 -DJucePlugin_Build_AU=0 -DJucePlugin_Build_AUv3=0 -DJucePlugin_Build_LV2=0 -DJucePlugin_Build_Standalone=0 -DJucePlugin_Build_Unity=0 -DJucePlugin_Build_VST3=1 -DJucePlugin_Build_VST=0 -DJucePlugin_CFBundleIdentifier=com.Harmoniq.Render -DJucePlugin_Desc=\"Render\" -DJucePlugin_EditorRequiresKeyboardFocus=0 -DJucePlugin_Enable_ARA=0 -DJucePlugin_IsMidiEffect=0 -DJucePlugin_IsSynth=0 -DJucePlugin_Manufacturer=\"Harmoniq\" -DJucePlugin_ManufacturerCode=0x48514149 -DJucePlugin_ManufacturerEmail=\"\" -DJucePlugin_ManufacturerWebsite=\"\" -DJucePlugin_Name=\"Render\" -DJucePlugin_PluginCode=0x48514d41 -DJucePlugin_ProducesMidiOutput=1 -DJucePlugin_VSTCategory=kPlugCategEffect -DJucePlugin_VSTNumMidiInputs=16 -DJucePlugin_VSTNumMidiOutputs=16 -DJucePlugin_VSTUniqueID=JucePlugin_PluginCode -DJucePlugin_Version=0.0.1 -DJucePlugin_VersionCode=0x1 -DJucePlugin_VersionString=\"0.0.1\" -DJucePlugin_Vst3Category=\"Fx\" -DJucePlugin_WantsMidiInput=1 -DNDEBUG=1 -DRender_VST3_EXPORTS -D_NDEBUG=1

CXX_INCLUDES = -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin/Render_artefacts/JuceLibraryCode -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/plugin/include -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/VST3_SDK -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/lv2 -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/serd -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/sord -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/sord/src -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/sratom -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/lilv -I/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_processors/format_types/LV2_SDK/lilv/src

CXX_FLAGSarm64 = -std=gnu++20 -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -Wall -Wshadow-all -Wshorten-64-to-32 -Wstrict-aliasing -Wuninitialized -Wunused-parameter -Wconversion -Wsign-compare -Wint-conversion -Wconditional-uninitialized -Wconstant-conversion -Wsign-conversion -Wbool-conversion -Wextra-semi -Wunreachable-code -Wcast-align -Wshift-sign-overflow -Wmissing-prototypes -Wnullable-to-nonnull-conversion -Wno-ignored-qualifiers -Wswitch-enum -Wpedantic -Wdeprecated -Wfloat-equal -Wmissing-field-initializers -Wzero-as-null-pointer-constant -Wunused-private-field -Woverloaded-virtual -Wreorder -Winconsistent-missing-destructor-override

CXX_FLAGS = -std=gnu++20 -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -Wall -Wshadow-all -Wshorten-64-to-32 -Wstrict-aliasing -Wuninitialized -Wunused-parameter -Wconversion -Wsign-compare -Wint-conversion -Wconditional-uninitialized -Wconstant-conversion -Wsign-conversion -Wbool-conversion -Wextra-semi -Wunreachable-code -Wcast-align -Wshift-sign-overflow -Wmissing-prototypes -Wnullable-to-nonnull-conversion -Wno-ignored-qualifiers -Wswitch-enum -Wpedantic -Wdeprecated -Wfloat-equal -Wmissing-field-initializers -Wzero-as-null-pointer-constant -Wunused-private-field -Woverloaded-virtual -Wreorder -Winconsistent-missing-destructor-override

