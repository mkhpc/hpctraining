git clone https://github.com/CardiacDemo/Cardiac_demo.git
cd Cardiac_demo
mkdir build
cd build
mpiicpc ../heart_demo.cpp ../luo_rudy_1991.cpp ../rcm.cpp ../mesh.cpp -g -o heart_demo -O3 -xCORE-AVX2 -std=c++11 -qopenmp -parallel-source-info=2
export OMP_NUM_THREADS=1
mpirun -n 12  ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 100 -i
advisor --collect=survey --project-dir=./advi -- mpirun -np 12 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 100 -i
advisor --collect=tripcounts --project-dir=./advi --flop --stacks --enable-data-transfer-analysis -- mpirun -np 12 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 100 -i
advisor --collect=map --project-dir=./advi --select=has-issue -– mpirun -np 12 ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 100 -i
