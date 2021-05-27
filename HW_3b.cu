#define BlockDim 16
#define TileWidth 16

#include <stdio.h>
#include <stdlib.h>

//*********************************************************************
//Function to multiply two matrices using GPU with tiling optimisation

__global__ void tiling_mul(float *gpu_a, float *gpu_b, float *gpu_result,int N) 
{
    // Considering Tile width same as BloackDim
    __shared__ float tile_a[TileWidth][TileWidth];
    __shared__ float tile_b[TileWidth][TileWidth];
    
    int bx = blockIdx.x; 
    int by = blockIdx.y;
    int tx = threadIdx.x; 
    int ty = threadIdx.y;
    
   // Identify the row and column of the C element to work on
    int row = by * TileWidth + ty;
    int col = bx * TileWidth + tx;
    float temp = 0;
    int idx,idy;
    
    // Loop over the A and B tiles required to compute the C element
    // Built-in variable gridDim specifies the size (or dimension) of the grid. 
    // Here m iterator defines the sub-block in action
    for (int m = 0; m < gridDim.x; ++m) 
    {
        idx = row * N + m * BlockDim + tx;
        idy = (m * BlockDim + ty) * N + col;
        // Check if N is divisible by BlockDim
        tile_a[ty][tx] = (idx < N*N) ? gpu_a[idx]: 0;
        tile_b[ty][tx] = (idy < N*N) ? gpu_b[idy]: 0;

        for (int k = 0; k < BlockDim; ++k) 
        {
            temp  = temp + tile_a[ty][k] * tile_b[k][tx];
        }
    }
    if(row < N && col < N)
    {
        gpu_result[row * N + col] = temp;
    }
}
 


//*********************************************************************
// Main Function
int main(int argc, char *argv[])
{   
int N=4;
    N= atoi(argv[1]);
    // allocate memory in cpu
    float *cpu_a, *cpu_b, *cpu_c;
    cpu_a = (float *)malloc(sizeof(float)*N*N);
    cpu_b = (float *)malloc(sizeof(float)*N*N);
    cpu_c = (float *)malloc(sizeof(float)*N*N);

   
    // Allocate memory on the gpu 
    float *gpu_a, *gpu_b, *gpu_c;
    cudaMalloc(&gpu_a, sizeof(float)*N*N);
    cudaMalloc(&gpu_b, sizeof(float)*N*N);
    cudaMalloc(&gpu_c, sizeof(float)*N*N);
    
    // Initialize mat A and B
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            cpu_a[i * N + j] = (float)rand()/(float)(RAND_MAX); 
            //Range 0 to 1
            cpu_b[i * N + j] = (float)rand()/(float)(RAND_MAX); 
            //Range 0 to 1
        }
    }
    if(N<10){
	//displays Matrix 1 only for N<10
	printf("Matrix 1 is \n");
	for (int i = 0; i < N; i++) {
	for (int j = 0; j < N; j++)
	    printf("%f ", cpu_a[i * N + j]);
	printf("\n");
	}
	//displays Matrix 2 only for N<10
	printf("Matrix 2 is \n");
	for (int i = 0; i < N; i++) {
	for (int j = 0; j < N; j++)
	    printf("%f ", cpu_b[i * N + j]);
	printf("\n");
	}
    } 	


    // copy matrix A and B from cpu to gpu memory
    cudaMemcpy(gpu_a, cpu_a, sizeof(float)*N*N, cudaMemcpyHostToDevice);
    cudaMemcpy(gpu_b, cpu_b, sizeof(float)*N*N, cudaMemcpyHostToDevice);
 
    //dim3 type is an integer vector to specify dimensions.
   
    dim3 dimGrid((unsigned int) (N-1)/BlockDim +1,(unsigned int) (N-1)/BlockDim +1,1);
    dim3 dimBlock(BlockDim, BlockDim,1);

    // Kernel
    tiling_mul<<<dimGrid, dimBlock>>>(gpu_a, gpu_b, gpu_c, N);       

    // Transefr results from gpu to cpu 
    cudaMemcpy(cpu_c, gpu_c, sizeof(float)*N*N, cudaMemcpyDeviceToHost);
   
   // Print if N<10
	 if (N<10) {
            printf("Done, Matrix Result is\n");
	    for (int i = 0; i < N; ++i) {
		for (int j = 0; j < N; ++j) {
		   printf("%f ", cpu_c[i * N + j]);
		}
		printf("\n");
	    }
	 }
    
    // free memory
    cudaFree(gpu_a);
    cudaFree(gpu_b);
    cudaFree(gpu_c);
    free(cpu_a);
    free(cpu_b);
    free(cpu_c);
}
