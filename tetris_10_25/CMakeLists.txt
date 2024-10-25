cmake_minimum_required(VERSION 3.5)

project(main)

set(CMAKE_CXX_STANDARD 17)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

include_directories (inc)
aux_source_directory (src SRC_LIST)

find_package(raylib REQUIRED)

add_executable(main main.cpp ${SRC_LIST})

target_link_libraries(main raylib)
