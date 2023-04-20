# CMake generated Testfile for 
# Source directory: /home/joel/BScNets/gudhi-devel/src/Persistent_cohomology/test
# Build directory: /home/joel/BScNets/gudhi-devel/build/src/Persistent_cohomology/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Persistent_cohomology_test_unit "/home/joel/BScNets/gudhi-devel/build/src/Persistent_cohomology/test/Persistent_cohomology_test_unit" "--color_output" "--report_level=detailed")
set_tests_properties(Persistent_cohomology_test_unit PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/cmake/modules/GUDHI_boost_test.cmake;26;add_test;/home/joel/BScNets/gudhi-devel/src/Persistent_cohomology/test/CMakeLists.txt;17;gudhi_add_boost_test;/home/joel/BScNets/gudhi-devel/src/Persistent_cohomology/test/CMakeLists.txt;0;")
add_test(Persistent_cohomology_test_betti_numbers "/home/joel/BScNets/gudhi-devel/build/src/Persistent_cohomology/test/Persistent_cohomology_test_betti_numbers" "--color_output" "--report_level=detailed")
set_tests_properties(Persistent_cohomology_test_betti_numbers PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/cmake/modules/GUDHI_boost_test.cmake;26;add_test;/home/joel/BScNets/gudhi-devel/src/Persistent_cohomology/test/CMakeLists.txt;18;gudhi_add_boost_test;/home/joel/BScNets/gudhi-devel/src/Persistent_cohomology/test/CMakeLists.txt;0;")
