# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/joel/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/joel/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joel/BScNets/gudhi-devel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joel/BScNets/gudhi-devel/build

# Include any dependencies generated for this target.
include src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/progress.make

# Include the compile flags for this target's objects.
include src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/flags.make

src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o: src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/flags.make
src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o: /home/joel/BScNets/gudhi-devel/src/Witness_complex/test/test_simple_witness_complex.cpp
src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o: src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o"
	cd /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o -MF CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o.d -o CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o -c /home/joel/BScNets/gudhi-devel/src/Witness_complex/test/test_simple_witness_complex.cpp

src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.i"
	cd /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joel/BScNets/gudhi-devel/src/Witness_complex/test/test_simple_witness_complex.cpp > CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.i

src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.s"
	cd /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joel/BScNets/gudhi-devel/src/Witness_complex/test/test_simple_witness_complex.cpp -o CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.s

# Object files for target Witness_complex_test_simple_witness_complex
Witness_complex_test_simple_witness_complex_OBJECTS = \
"CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o"

# External object files for target Witness_complex_test_simple_witness_complex
Witness_complex_test_simple_witness_complex_EXTERNAL_OBJECTS =

src/Witness_complex/test/Witness_complex_test_simple_witness_complex: src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/test_simple_witness_complex.cpp.o
src/Witness_complex/test/Witness_complex_test_simple_witness_complex: src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/build.make
src/Witness_complex/test/Witness_complex_test_simple_witness_complex: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.74.0
src/Witness_complex/test/Witness_complex_test_simple_witness_complex: src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Witness_complex_test_simple_witness_complex"
	cd /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Witness_complex_test_simple_witness_complex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/build: src/Witness_complex/test/Witness_complex_test_simple_witness_complex
.PHONY : src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/build

src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/clean:
	cd /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test && $(CMAKE_COMMAND) -P CMakeFiles/Witness_complex_test_simple_witness_complex.dir/cmake_clean.cmake
.PHONY : src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/clean

src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/depend:
	cd /home/joel/BScNets/gudhi-devel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joel/BScNets/gudhi-devel /home/joel/BScNets/gudhi-devel/src/Witness_complex/test /home/joel/BScNets/gudhi-devel/build /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test /home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Witness_complex/test/CMakeFiles/Witness_complex_test_simple_witness_complex.dir/depend

