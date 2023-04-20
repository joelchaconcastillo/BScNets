# CMake generated Testfile for 
# Source directory: /home/joel/BScNets/gudhi-devel/src/Collapse/utilities
# Build directory: /home/joel/BScNets/gudhi-devel/build/src/Collapse/utilities
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Edge_collapse_utilities_point_cloud_rips_persistence "/home/joel/BScNets/gudhi-devel/build/src/Collapse/utilities/point_cloud_edge_collapse_rips_persistence" "/home/joel/BScNets/gudhi-devel/data/points/tore3D_1307.off" "-r" "0.25" "-m" "0.5" "-d" "3" "-p" "3" "-o" "off_results.pers")
set_tests_properties(Edge_collapse_utilities_point_cloud_rips_persistence PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Collapse/utilities/CMakeLists.txt;12;add_test;/home/joel/BScNets/gudhi-devel/src/Collapse/utilities/CMakeLists.txt;0;")
add_test(Edge_collapse_utilities_distance_matrix_rips_persistence "/home/joel/BScNets/gudhi-devel/build/src/Collapse/utilities/distance_matrix_edge_collapse_rips_persistence" "/home/joel/BScNets/gudhi-devel/data/distance_matrix/tore3D_1307_distance_matrix.csv" "-r" "0.25" "-m" "0.5" "-d" "3" "-p" "3" "-o" "csv_results.pers")
set_tests_properties(Edge_collapse_utilities_distance_matrix_rips_persistence PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Collapse/utilities/CMakeLists.txt;24;add_test;/home/joel/BScNets/gudhi-devel/src/Collapse/utilities/CMakeLists.txt;0;")
add_test(Edge_collapse_utilities_diff_persistence "/usr/bin/diff" "off_results.pers" "csv_results.pers")
set_tests_properties(Edge_collapse_utilities_diff_persistence PROPERTIES  DEPENDS "Edge_collapse_utilities_point_cloud_rips_persistence;Edge_collapse_utilities_distance_matrix_rips_persistence" _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Collapse/utilities/CMakeLists.txt;30;add_test;/home/joel/BScNets/gudhi-devel/src/Collapse/utilities/CMakeLists.txt;0;")
