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

#message (STATUS "GTEST_ROOT:${GTEST_ROOT}")

target_link_libraries(third_party_lib
  INTERFACE
  ${LIB_GTEST})
target_include_directories(third_party_lib
  INTERFACE
  "${GTEST_ROOT}/include")
