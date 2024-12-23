#include <cstdio>
#include <cuda_runtime.h>
#include <stdio.h>

__global__ void checkIndex(void) {
  printf("threadIdx:(%d, %d, %d), blockIdx:(%d, %d, %d), blockDim(%d, %d, %d), "
         "gridDim:(%d, %d, %d)\n",
         threadIdx.x, threadIdx.y, threadIdx.z, blockIdx.x, blockIdx.y,
         blockIdx.z, blockDim.x, blockDim.y, blockDim.z, gridDim.x, gridDim.y,
         gridDim.z);
}

int main() {
  int nElem = 6;
  dim3 block(5);
  dim3 grid((nElem + block.x - 1) / block.x);

  printf("grid.x is %d, grid.y is %d, grid.z is %d\n", grid.x, grid.y, grid.z);
  printf("block.x is %d, block.y is %d, block.z is %d\n", block.x, block.y,
         block.z);

  checkIndex<<<grid, block>>>();
  cudaDeviceReset();
  return 0;
}
