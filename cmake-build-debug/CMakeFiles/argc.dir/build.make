# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huangchenle/Desktop/argc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huangchenle/Desktop/argc/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/argc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/argc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/argc.dir/flags.make

CMakeFiles/argc.dir/main.cpp.o: CMakeFiles/argc.dir/flags.make
CMakeFiles/argc.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangchenle/Desktop/argc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/argc.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/argc.dir/main.cpp.o -c /Users/huangchenle/Desktop/argc/main.cpp

CMakeFiles/argc.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/argc.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangchenle/Desktop/argc/main.cpp > CMakeFiles/argc.dir/main.cpp.i

CMakeFiles/argc.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/argc.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangchenle/Desktop/argc/main.cpp -o CMakeFiles/argc.dir/main.cpp.s

CMakeFiles/argc.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/argc.dir/main.cpp.o.requires

CMakeFiles/argc.dir/main.cpp.o.provides: CMakeFiles/argc.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/argc.dir/build.make CMakeFiles/argc.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/argc.dir/main.cpp.o.provides

CMakeFiles/argc.dir/main.cpp.o.provides.build: CMakeFiles/argc.dir/main.cpp.o


# Object files for target argc
argc_OBJECTS = \
"CMakeFiles/argc.dir/main.cpp.o"

# External object files for target argc
argc_EXTERNAL_OBJECTS =

argc: CMakeFiles/argc.dir/main.cpp.o
argc: CMakeFiles/argc.dir/build.make
argc: CMakeFiles/argc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huangchenle/Desktop/argc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable argc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/argc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/argc.dir/build: argc

.PHONY : CMakeFiles/argc.dir/build

CMakeFiles/argc.dir/requires: CMakeFiles/argc.dir/main.cpp.o.requires

.PHONY : CMakeFiles/argc.dir/requires

CMakeFiles/argc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/argc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/argc.dir/clean

CMakeFiles/argc.dir/depend:
	cd /Users/huangchenle/Desktop/argc/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huangchenle/Desktop/argc /Users/huangchenle/Desktop/argc /Users/huangchenle/Desktop/argc/cmake-build-debug /Users/huangchenle/Desktop/argc/cmake-build-debug /Users/huangchenle/Desktop/argc/cmake-build-debug/CMakeFiles/argc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/argc.dir/depend

