cmake_minimum_required(VERSION 3.9)

# You should replace hello_cmake with your project name.
project(hello_cmake)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)

aux_source_directory(${PROJECT_SOURCE_DIR}/src DIR_SRCS)

include_directories(${PROJECT_SOURCE_DIR}/include)

add_executable(${PROJECT_NAME} ${DIR_SRCS})