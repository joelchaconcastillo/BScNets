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

# Utility rule file for python.

# Include any custom commands dependencies for this target.
include src/python/CMakeFiles/python.dir/compiler_depend.make

# Include the progress variables for this target.
include src/python/CMakeFiles/python.dir/progress.make

src/python/CMakeFiles/python: src/python/gudhi.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Do not forget to add /home/joel/BScNets/gudhi-devel/build/src/python/ to your PYTHONPATH before using examples or tests"

src/python/gudhi.so:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating gudhi.so"
	cd /home/joel/BScNets/gudhi-devel/build/src/python && /usr/bin/python3.10 /home/joel/BScNets/gudhi-devel/build/src/python/setup.py build_ext --inplace

python: src/python/CMakeFiles/python
python: src/python/gudhi.so
python: src/python/CMakeFiles/python.dir/build.make
.PHONY : python

# Rule to build all files generated by this target.
src/python/CMakeFiles/python.dir/build: python
.PHONY : src/python/CMakeFiles/python.dir/build

src/python/CMakeFiles/python.dir/clean:
	cd /home/joel/BScNets/gudhi-devel/build/src/python && $(CMAKE_COMMAND) -P CMakeFiles/python.dir/cmake_clean.cmake
.PHONY : src/python/CMakeFiles/python.dir/clean

src/python/CMakeFiles/python.dir/depend:
	cd /home/joel/BScNets/gudhi-devel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joel/BScNets/gudhi-devel /home/joel/BScNets/gudhi-devel/src/python /home/joel/BScNets/gudhi-devel/build /home/joel/BScNets/gudhi-devel/build/src/python /home/joel/BScNets/gudhi-devel/build/src/python/CMakeFiles/python.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/python/CMakeFiles/python.dir/depend

