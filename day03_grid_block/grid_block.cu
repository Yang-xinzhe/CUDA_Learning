#include <cstdio>
#include <cuda_runtime.h>

int main(int argc, char **argv) {
  int nElem = 1024;
  dim3 block(1024);
  dim3 grid((nElem - 1) / block.x + 1);
  printf("grid.x is %d, block.x is %d\n", grid.x, block.x);

  block.x = 512;
  grid.x = ((nElem - 1) / block.x + 1);
  printf("grid.x is %d, block.x is %d\n", grid.x, block.x);

  cudaDeviceReset();
  return 0;
}
