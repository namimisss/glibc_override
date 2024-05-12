project(xv6)


set(MKFS_SRC mkfs/mkfs.c)

add_executable(mkfs ${MKFS_SRC})
target_include_directories(mkfs PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
message (STATUS "CMAKE_CURRENT_SOURCE_DIR:${CMAKE_CURRENT_SOURCE_DIR}")