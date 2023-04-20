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
include src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/progress.make

# Include the compile flags for this target's objects.
include src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/flags.make

src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o: src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/flags.make
src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o: /home/joel/BScNets/gudhi-devel/src/Coxeter_triangulation/test/perm_rep_test.cpp
src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o: src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o"
	cd /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o -MF CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o.d -o CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o -c /home/joel/BScNets/gudhi-devel/src/Coxeter_triangulation/test/perm_rep_test.cpp

src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.i"
	cd /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joel/BScNets/gudhi-devel/src/Coxeter_triangulation/test/perm_rep_test.cpp > CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.i

src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.s"
	cd /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joel/BScNets/gudhi-devel/src/Coxeter_triangulation/test/perm_rep_test.cpp -o CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.s

# Object files for target Coxeter_triangulation_permutahedral_representation_test
Coxeter_triangulation_permutahedral_representation_test_OBJECTS = \
"CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o"

# External object files for target Coxeter_triangulation_permutahedral_representation_test
Coxeter_triangulation_permutahedral_representation_test_EXTERNAL_OBJECTS =

src/Coxeter_triangulation/test/Coxeter_triangulation_permutahedral_representation_test: src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/perm_rep_test.cpp.o
src/Coxeter_triangulation/test/Coxeter_triangulation_permutahedral_representation_test: src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/build.make
src/Coxeter_triangulation/test/Coxeter_triangulation_permutahedral_representation_test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.74.0
src/Coxeter_triangulation/test/Coxeter_triangulation_permutahedral_representation_test: src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Coxeter_triangulation_permutahedral_representation_test"
	cd /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/build: src/Coxeter_triangulation/test/Coxeter_triangulation_permutahedral_representation_test
.PHONY : src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/build

src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/clean:
	cd /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test && $(CMAKE_COMMAND) -P CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/cmake_clean.cmake
.PHONY : src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/clean

src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/depend:
	cd /home/joel/BScNets/gudhi-devel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joel/BScNets/gudhi-devel /home/joel/BScNets/gudhi-devel/src/Coxeter_triangulation/test /home/joel/BScNets/gudhi-devel/build /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test /home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Coxeter_triangulation/test/CMakeFiles/Coxeter_triangulation_permutahedral_representation_test.dir/depend

