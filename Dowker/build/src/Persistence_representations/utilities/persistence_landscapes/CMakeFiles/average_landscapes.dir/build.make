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
include src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/progress.make

# Include the compile flags for this target's objects.
include src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/flags.make

src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o: src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/flags.make
src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o: /home/joel/BScNets/gudhi-devel/src/Persistence_representations/utilities/persistence_landscapes/average_landscapes.cpp
src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o: src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o"
	cd /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o -MF CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o.d -o CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o -c /home/joel/BScNets/gudhi-devel/src/Persistence_representations/utilities/persistence_landscapes/average_landscapes.cpp

src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/average_landscapes.dir/average_landscapes.cpp.i"
	cd /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joel/BScNets/gudhi-devel/src/Persistence_representations/utilities/persistence_landscapes/average_landscapes.cpp > CMakeFiles/average_landscapes.dir/average_landscapes.cpp.i

src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/average_landscapes.dir/average_landscapes.cpp.s"
	cd /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joel/BScNets/gudhi-devel/src/Persistence_representations/utilities/persistence_landscapes/average_landscapes.cpp -o CMakeFiles/average_landscapes.dir/average_landscapes.cpp.s

# Object files for target average_landscapes
average_landscapes_OBJECTS = \
"CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o"

# External object files for target average_landscapes
average_landscapes_EXTERNAL_OBJECTS =

src/Persistence_representations/utilities/persistence_landscapes/average_landscapes: src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/average_landscapes.cpp.o
src/Persistence_representations/utilities/persistence_landscapes/average_landscapes: src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/build.make
src/Persistence_representations/utilities/persistence_landscapes/average_landscapes: src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joel/BScNets/gudhi-devel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable average_landscapes"
	cd /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/average_landscapes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/build: src/Persistence_representations/utilities/persistence_landscapes/average_landscapes
.PHONY : src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/build

src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/clean:
	cd /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes && $(CMAKE_COMMAND) -P CMakeFiles/average_landscapes.dir/cmake_clean.cmake
.PHONY : src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/clean

src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/depend:
	cd /home/joel/BScNets/gudhi-devel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joel/BScNets/gudhi-devel /home/joel/BScNets/gudhi-devel/src/Persistence_representations/utilities/persistence_landscapes /home/joel/BScNets/gudhi-devel/build /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes /home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Persistence_representations/utilities/persistence_landscapes/CMakeFiles/average_landscapes.dir/depend

