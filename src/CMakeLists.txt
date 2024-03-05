set(GLIBC_ROOT "${CMAKE_SOURCE_DIR}/src")

set(SOURCE_FILE
  func_test.cpp)

add_library(GLIBC_LIB_CORE STATIC ${SOURCE_FILE})

add_library(glibc_lib INTERFACE)

target_link_libraries(glibc_lib
  INTERFACE
  GLIBC_LIB_CORE)
target_include_directories(glibc_lib
  INTERFACE
  "${GLIBC_ROOT}")
