set(GLIBC_ROOT "${CMAKE_SOURCE_DIR}/src/glibc")
set(SOURCE_FILE
  func_test.cpp)

add_library(GLIBC_LIB_CORE STATIC ${SOURCE_FILE})

target_link_libraries(SRC_LIB
  INTERFACE
  GLIBC_LIB_CORE)

message (STATUS "GLIBC_ROOT:${GLIBC_ROOT}")

target_include_directories(SRC_LIB
  INTERFACE
  "${GLIBC_ROOT}")
