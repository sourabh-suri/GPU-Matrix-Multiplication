#define BlockDim 16

#include <stdio.h>
#include <stdlib.h>


//*********************************************************************
//Function to multiply two matrices using GPU without any optimisation
__global__ void mul(float *a,float *b, float *c,int N)
{ 
    float temp = 0;
    int bx = blockIdx.x; 
    int by = blockIdx.y;
    int tx = threadIdx.x; 
    int ty = threadIdx.y;
    
   // Identify the row and column of the C element to work on
    int row = by * BlockDim + ty;
    int col = bx * BlockDim + tx;

    if( col < N && row < N) 
    {
        for(int i = 0; i < N; i++) 
        {
        // mat a is row major traversed and mat b is col major traversed
            temp = temp + a[i + row * N] * b[i * N + col]; 
        }
        c[row * N + col] = temp;
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
 
    //dim3 type is defined integer vector to specify dimensions.
    dim3 dimBlock(BlockDim, BlockDim,1);
    dim3 dimGrid((unsigned int) (N-1)/BlockDim +1,(unsigned int) (N-1)/BlockDim +1,1);

    // Kernel  
    mul<<<dimGrid, dimBlock>>>(gpu_a, gpu_b, gpu_c, N);   

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
