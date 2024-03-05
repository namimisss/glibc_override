cmake_minimum_required(VERSION 3.16)
project(glibc_remake)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


add_subdirectory(third_party)
add_subdirectory(src)
add_subdirectory(test)
