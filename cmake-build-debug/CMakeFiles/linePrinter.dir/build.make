# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/oleglesnoy/Desktop/linePrinter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/linePrinter.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/linePrinter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linePrinter.dir/flags.make

CMakeFiles/linePrinter.dir/main.cpp.o: CMakeFiles/linePrinter.dir/flags.make
CMakeFiles/linePrinter.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/linePrinter.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linePrinter.dir/main.cpp.o -c /Users/oleglesnoy/Desktop/linePrinter/main.cpp

CMakeFiles/linePrinter.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linePrinter.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/oleglesnoy/Desktop/linePrinter/main.cpp > CMakeFiles/linePrinter.dir/main.cpp.i

CMakeFiles/linePrinter.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linePrinter.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/oleglesnoy/Desktop/linePrinter/main.cpp -o CMakeFiles/linePrinter.dir/main.cpp.s

# Object files for target linePrinter
linePrinter_OBJECTS = \
"CMakeFiles/linePrinter.dir/main.cpp.o"

# External object files for target linePrinter
linePrinter_EXTERNAL_OBJECTS =

linePrinter: CMakeFiles/linePrinter.dir/main.cpp.o
linePrinter: CMakeFiles/linePrinter.dir/build.make
linePrinter: CMakeFiles/linePrinter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable linePrinter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linePrinter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linePrinter.dir/build: linePrinter
.PHONY : CMakeFiles/linePrinter.dir/build

CMakeFiles/linePrinter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linePrinter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linePrinter.dir/clean

CMakeFiles/linePrinter.dir/depend:
	cd /Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/oleglesnoy/Desktop/linePrinter /Users/oleglesnoy/Desktop/linePrinter /Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug /Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug /Users/oleglesnoy/Desktop/linePrinter/cmake-build-debug/CMakeFiles/linePrinter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linePrinter.dir/depend

