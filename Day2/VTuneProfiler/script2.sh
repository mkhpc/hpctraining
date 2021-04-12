export OMP_NUM_THREADS=1
mpirun -np 12 vtune -collect hpc-performance -r vtune_mpi -- ./heart_demo -m ../mesh_mid -s ../setup_mid.txt -t 100
