cmake_minimum_required(VERSION 3.5)

project(main)

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

find_package(raylib REQUIRED)

add_executable(main main.cpp)

target_link_libraries(main raylib)