echo "..............compiling for optimised tiling GPU multiplication.........................."
res1=$(date +%s.%N)
export PATH=$PATH:/usr/local/cuda/bin
sudo nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 5
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=5: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 100
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=100: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds
res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 100
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=100: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 100
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=100: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 100
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=100: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 100
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=100: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds



res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 200
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=200: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 200
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=200: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 200
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=200: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 200
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=200: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 200
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=200: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds





res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 500
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=500: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 500
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=500: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 500
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=500: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 500
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=500: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 500
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=500: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds





res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 1000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=1000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 1000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=1000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 1000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=1000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 1000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=1000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 1000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=1000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds




res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 2000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=2000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 2000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=2000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 2000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=2000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds
res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 2000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=2000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 2000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=2000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 5000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=5000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 5000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=5000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 5000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=5000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 5000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=5000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 5000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=5000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds



res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 10000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=10000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 10000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=10000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 10000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=10000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds


res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 10000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=10000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds

res1=$(date +%s.%N)
nvcc HW_3b.cu -o tiling_GPU.o
./tiling_GPU.o 10000
res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)
LC_NUMERIC=C printf "GPU Tiling Mat MUl Total runtime for N=10000: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds
