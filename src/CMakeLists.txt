set(SRC_ROOT "${CMAKE_SOURCE_DIR}/src")

add_library(SRC_LIB INTERFACE)

add_subdirectory(glibc)

add_subdirectory(xv6)




# xv6
#add_custom_command

