# CMake generated Testfile for 
# Source directory: /home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities
# Build directory: /home/joel/BScNets/gudhi-devel/build/src/Rips_complex/utilities
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Rips_complex_utility_from_rips_distance_matrix "/home/joel/BScNets/gudhi-devel/build/src/Rips_complex/utilities/rips_distance_matrix_persistence" "/home/joel/BScNets/gudhi-devel/data/distance_matrix/full_square_distance_matrix.csv" "-r" "1.0" "-d" "3" "-p" "3" "-m" "0")
set_tests_properties(Rips_complex_utility_from_rips_distance_matrix PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;9;add_test;/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;0;")
add_test(Rips_complex_utility_from_rips_on_tore_3D "/home/joel/BScNets/gudhi-devel/build/src/Rips_complex/utilities/rips_persistence" "/home/joel/BScNets/gudhi-devel/data/points/tore3D_1307.off" "-r" "0.25" "-m" "0.5" "-d" "3" "-p" "3")
set_tests_properties(Rips_complex_utility_from_rips_on_tore_3D PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;20;add_test;/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;0;")
add_test(Rips_complex_utility_from_rips_correlation_matrix "/home/joel/BScNets/gudhi-devel/build/src/Rips_complex/utilities/rips_correlation_matrix_persistence" "/home/joel/BScNets/gudhi-devel/data/correlation_matrix/lower_triangular_correlation_matrix.csv" "-c" "0.3" "-d" "3" "-p" "3" "-m" "0")
set_tests_properties(Rips_complex_utility_from_rips_correlation_matrix PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;31;add_test;/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;0;")
add_test(Sparse_rips_complex_utility_on_tore_3D "/home/joel/BScNets/gudhi-devel/build/src/Rips_complex/utilities/sparse_rips_persistence" "/home/joel/BScNets/gudhi-devel/data/points/tore3D_300.off" "-e" "0.5" "-m" "0.2" "-d" "3" "-p" "2")
set_tests_properties(Sparse_rips_complex_utility_on_tore_3D PROPERTIES  _BACKTRACE_TRIPLES "/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;42;add_test;/home/joel/BScNets/gudhi-devel/src/Rips_complex/utilities/CMakeLists.txt;0;")
