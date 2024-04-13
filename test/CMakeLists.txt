
# gtest
add_executable(gtest_main gtest_main.cpp)
target_link_libraries(gtest_main SRC_LIB third_party_lib)

# benchmark
add_executable(benchmark_main benchmark_main.cpp)
target_link_libraries(benchmark_main SRC_LIB third_party_lib)

# leveldb
add_executable(leveldb_main leveldb_main.cpp)
target_link_libraries(leveldb_main SRC_LIB third_party_lib)

