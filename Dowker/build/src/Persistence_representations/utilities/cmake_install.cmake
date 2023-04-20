# Install script for directory: /home/joel/BScNets/gudhi-devel/src/Persistence_representations/utilities

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_heat_maps/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_intervals/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_landscapes_on_grid/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/persistence_vectors/cmake_install.cmake")

endif()

