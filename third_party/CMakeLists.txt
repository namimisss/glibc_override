#message(STATUS "third party")

set(THIRD_PARTY_ROOT "${CMAKE_SOURCE_DIR}/third_party")
add_library(third_party_lib INTERFACE)

# google test
set(GTEST_ROOT "${THIRD_PARTY_ROOT}/google_test")
find_library(LIB_GTEST "libgtest.a" "${GTEST_ROOT}/lib" NO_DEFAULT_PATH)
if (LIB_GTEST-NOTFOUND)
  message(FATAL_ERROR "gtest not found")
else()
  message (STATUS  "gtest found")
endif()

# benchmark
set(BENCHMARK_ROOT "${THIRD_PARTY_ROOT}/benchmark")
find_library(LIB_BENCHMARK "libbenchmark.a" "${BENCHMARK_ROOT}/lib" NO_DEFAULT_PATH)
if (LIB_BENCHMARK-NOTFOUND)
  message(FATAL_ERROR "benchmark not found")
else()
  message (STATUS  "benchmark found")
endif()

# level db
set(LEVELDB_ROOT "${THIRD_PARTY_ROOT}/leveldb")
find_library(LIB_LEVELDB "libleveldb.a" "${LEVELDB_ROOT}/lib" NO_DEFAULT_PATH)
if (LIB_LEVELDB-NOTFOUND)
  message(FATAL_ERROR "leveldb not found")
else()
  message (STATUS  "leveldb found")
endif()

#message (STATUS "GTEST_ROOT:${GTEST_ROOT}")

target_link_libraries(third_party_lib
  INTERFACE
  ${LIB_LEVELDB}
  ${LIB_BENCHMARK}
  ${LIB_GTEST})
target_include_directories(third_party_lib
  INTERFACE
  "${GTEST_ROOT}/include"
  "${BENCHMARK_ROOT}/include"
  "${LEVELDB_ROOT}/include")
