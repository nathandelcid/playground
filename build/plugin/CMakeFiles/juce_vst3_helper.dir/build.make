# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build

# Include any dependencies generated for this target.
include plugin/CMakeFiles/juce_vst3_helper.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include plugin/CMakeFiles/juce_vst3_helper.dir/compiler_depend.make

# Include the progress variables for this target.
include plugin/CMakeFiles/juce_vst3_helper.dir/progress.make

# Include the compile flags for this target's objects.
include plugin/CMakeFiles/juce_vst3_helper.dir/flags.make

plugin/CMakeFiles/juce_vst3_helper.dir/codegen:
.PHONY : plugin/CMakeFiles/juce_vst3_helper.dir/codegen

plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o: plugin/CMakeFiles/juce_vst3_helper.dir/flags.make
plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o: /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm
plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o: plugin/CMakeFiles/juce_vst3_helper.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o"
	cd /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o -MF CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o.d -o CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o -c /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm

plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.i"
	cd /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm > CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.i

plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.s"
	cd /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm -o CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.s

# Object files for target juce_vst3_helper
juce_vst3_helper_OBJECTS = \
"CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o"

# External object files for target juce_vst3_helper
juce_vst3_helper_EXTERNAL_OBJECTS =

plugin/juce_vst3_helper: plugin/CMakeFiles/juce_vst3_helper.dir/__/libs/juce/modules/juce_audio_plugin_client/VST3/juce_VST3ManifestHelper.mm.o
plugin/juce_vst3_helper: plugin/CMakeFiles/juce_vst3_helper.dir/build.make
plugin/juce_vst3_helper: plugin/CMakeFiles/juce_vst3_helper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable juce_vst3_helper"
	cd /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/juce_vst3_helper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugin/CMakeFiles/juce_vst3_helper.dir/build: plugin/juce_vst3_helper
.PHONY : plugin/CMakeFiles/juce_vst3_helper.dir/build

plugin/CMakeFiles/juce_vst3_helper.dir/clean:
	cd /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin && $(CMAKE_COMMAND) -P CMakeFiles/juce_vst3_helper.dir/cmake_clean.cmake
.PHONY : plugin/CMakeFiles/juce_vst3_helper.dir/clean

plugin/CMakeFiles/juce_vst3_helper.dir/depend:
	cd /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/plugin /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin /Users/nade8804/Library/CloudStorage/OneDrive-UCB-O365/Documents/Playground/build/plugin/CMakeFiles/juce_vst3_helper.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : plugin/CMakeFiles/juce_vst3_helper.dir/depend

