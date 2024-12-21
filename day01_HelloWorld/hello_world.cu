#include <cstdio>
#include <stdio.h>

__global__ void Hello_World(void) { printf("GPU: Hello World\n"); }

int main() {
  printf("CPU: Hello World\n");

  Hello_World<<<1, 1>>>();
  cudaDeviceReset(); // if no this line, it can not out put hello world from GPU
  return 0;
}
