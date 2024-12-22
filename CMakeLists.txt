cmake_minimum_required(VERSION 3.16)

project(CUDA_Learning LANGUAGES CXX CUDA)

set(CMAKE_CUDA_ARCHITECTURES 86)

set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -g -G -O3")

add_subdirectory(day01_HelloWorld)
add_subdirectory(day02_CheckDimension)
add_subdirectory(day03_grid_block)
