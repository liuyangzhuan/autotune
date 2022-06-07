mpicc -std=c99 -fno-unroll-loops -fopenmp -O3 -mllvm -polly -mllvm -polly-process-unprofitable -mllvm -polly-use-llvm-names -ffast-math -march=native -o amg2013 amg2013.c -I.. -I../utilities -I../struct_mv -I../sstruct_mv -I../IJ_mv -I../seq_mv -I../parcsr_mv -I../parcsr_ls -I../krylov -DTIMER_USE_MPI -DHYPRE_USING_OPENMP -DHYPRE_LONG_LONG -DHYPRE_NO_GLOBAL_PARTITION -fopenmp -DHYPRE_USING_PERSISTENT_COMM -DHYPRE_HOPSCOTCH -DHYPRE_BIGINT -DHYPRE_TIMING -L../parcsr_ls -L../parcsr_mv -L../IJ_mv -L../seq_mv -L../sstruct_mv -L../struct_mv -L../krylov -L../utilities -lparcsr_ls -lparcsr_mv -lseq_mv -lsstruct_mv -lIJ_mv -lHYPRE_struct_mv -lkrylov -lHYPRE_utilities -lm  -fopenmp -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib