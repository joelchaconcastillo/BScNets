# CMake generated Testfile for 
# Source directory: /home/joel/BScNets/gudhi-devel/src/Nerve_GIC/utilities
# Build directory: /home/joel/BScNets/gudhi-devel/build/src/Nerve_GIC/utilities
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Nerve_GIC_utilities_nerve "/home/joel/BScNets/gudhi-devel/build/src/Nerve_GIC/utilities/Nerve" "human.off" "2" "10" "0.3")
set_tests_properties(Nerve_GIC_utilities_nerve PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Nerve_GIC/utilities/CMakeLists.txt;15;add_test;/home/joel/BScNets/gudhi-devel/src/Nerve_GIC/utilities/CMakeLists.txt;0;")
add_test(Nerve_GIC_utilities_VoronoiGIC "/home/joel/BScNets/gudhi-devel/build/src/Nerve_GIC/utilities/VoronoiGIC" "human.off" "100")
set_tests_properties(Nerve_GIC_utilities_VoronoiGIC PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Nerve_GIC/utilities/CMakeLists.txt;18;add_test;/home/joel/BScNets/gudhi-devel/src/Nerve_GIC/utilities/CMakeLists.txt;0;")
