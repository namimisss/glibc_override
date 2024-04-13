
# gtest
add_executable(main_test main_test.cpp)
target_link_libraries(main_test glibc_lib third_party_lib)

# benchmark
add_executable(benchmark_main benchmark_main.cpp)
target_link_libraries(benchmark_main glibc_lib third_party_lib)

# leveldb
add_executable(leveldb_main leveldb_main.cpp)
target_link_libraries(leveldb_main glibc_lib third_party_lib)

