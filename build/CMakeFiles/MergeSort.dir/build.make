# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.4.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.4.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build

# Include any dependencies generated for this target.
include CMakeFiles/MergeSort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MergeSort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MergeSort.dir/flags.make

CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o: CMakeFiles/MergeSort.dir/flags.make
CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o: ../src/MergeSort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o -c /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/src/MergeSort.cpp

CMakeFiles/MergeSort.dir/src/MergeSort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MergeSort.dir/src/MergeSort.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/src/MergeSort.cpp > CMakeFiles/MergeSort.dir/src/MergeSort.cpp.i

CMakeFiles/MergeSort.dir/src/MergeSort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MergeSort.dir/src/MergeSort.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/src/MergeSort.cpp -o CMakeFiles/MergeSort.dir/src/MergeSort.cpp.s

CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.requires:

.PHONY : CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.requires

CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.provides: CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.requires
	$(MAKE) -f CMakeFiles/MergeSort.dir/build.make CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.provides.build
.PHONY : CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.provides

CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.provides.build: CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o


# Object files for target MergeSort
MergeSort_OBJECTS = \
"CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o"

# External object files for target MergeSort
MergeSort_EXTERNAL_OBJECTS =

libMergeSort.a: CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o
libMergeSort.a: CMakeFiles/MergeSort.dir/build.make
libMergeSort.a: CMakeFiles/MergeSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMergeSort.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MergeSort.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MergeSort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MergeSort.dir/build: libMergeSort.a

.PHONY : CMakeFiles/MergeSort.dir/build

CMakeFiles/MergeSort.dir/requires: CMakeFiles/MergeSort.dir/src/MergeSort.cpp.o.requires

.PHONY : CMakeFiles/MergeSort.dir/requires

CMakeFiles/MergeSort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MergeSort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MergeSort.dir/clean

CMakeFiles/MergeSort.dir/depend:
	cd /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build /Users/Andrew/Dropbox/Northeastern/Research/NUCAR/NICE/MergeSort/build/CMakeFiles/MergeSort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MergeSort.dir/depend

