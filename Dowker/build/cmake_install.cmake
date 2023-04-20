# Install script for directory: /home/joel/BScNets/gudhi-devel

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
  include("/home/joel/BScNets/gudhi-devel/build/src/common/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/common/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Alpha_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Alpha_complex/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Bitmap_cubical_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Bitmap_cubical_complex/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Bottleneck_distance/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Bottleneck_distance/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Collapse/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Collapse/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Coxeter_triangulation/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Cech_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Cech_complex/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistence_representations/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Persistent_cohomology/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Rips_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Rips_complex/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Simplex_tree/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Skeleton_blocker/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Spatial_searching/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Subsampling/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Tangential_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Toplex_map/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Witness_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Witness_complex/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Dowker_complex/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Dowker_complex/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Nerve_GIC/test/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/Nerve_GIC/utilities/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/GudhUI/cmake_install.cmake")
  include("/home/joel/BScNets/gudhi-devel/build/src/python/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/joel/BScNets/gudhi-devel/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
