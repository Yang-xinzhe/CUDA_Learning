find_package(CUDA REQUIRED)

cuda_add_executable(hello_world hello_world.cu)

set(CMAKE_CUDA_FLAGS "-arch=sm_86 -g -G -O3")

