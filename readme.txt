
////////////////////////////////////////////////////////////////
GPU Info:
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 435.21       Driver Version: 435.21       CUDA Version: 10.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 108...  Off  | 00000000:05:00.0 Off |                  N/A |
| 33%   45C    P0    54W / 250W |      0MiB / 11177MiB |      3%      Default |
+-------------------------------+----------------------+----------------------+
05:00.0 VGA compatible controller: NVIDIA Corporation GP102 [GeForce GTX 1080 Ti] (rev a1)
05:00.1 Audio device: NVIDIA Corporation GP102 HDMI Audio Controller (rev a1)
Cuda compilation tools, release 10.0, V10.0.130
////////////////////////////////////////////////////////////////
CPU Info:
No. of processors : 16
vendor_id : GenuineIntel
model name : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
OS: Ubuntu 20
////////////////////////////////////////////////////////////////

N--> Dimension of matrices
----------------------------------------------------------------------------
To run code for Unoptimised Mat Mul on GPU
----------------------------------------------------------------------------
Simply run $ sudo ./HW3a.sh 
for logic correctness and timing analysis 
------------------------------------or--------------------------------------

Compile: $ nvcc HW_3a.cu -o normal_GPU.o
Output: $ time ./normal_GPU.o <N>
Example: 
	$ nvcc HW_3a.cu -o normal_GPU.o
	$ time ./normal_GPU.o 500


----------------------------------------------------------------------------
To run code for Tiling optimised Mat Mul on GPU
----------------------------------------------------------------------------
Simply run $ sudo ./HW3b.sh 
for logic correctness and timing analysis 
------------------------------------or--------------------------------------

Compile: $ nvcc HW_3b.cu -o tiling_GPU.o
Output: $ time ./tiling_GPU.o <N>
Example: 
	$ nvcc HW_3a.cu -o tiling_GPU.o
	$ time ./tiling_GPU.o 1000
