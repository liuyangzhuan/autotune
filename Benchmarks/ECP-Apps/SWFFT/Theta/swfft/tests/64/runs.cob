#!/bin/bash

let nnds=64
let nomp=64
let rpn=1
#-----This part creates a submission script---------
cat >batch2.job <<EOF
#!/bin/bash
#COBALT -A CSC249ADOA01 -n 128 -t 30 -O runs${nnds}x${rpn}x${nomp} --attrs mcdram=cache:numa=quad

export OMP_NUM_THREADS=${nomp}

           aprun -n $((nnds*rpn)) -N ${rpn} -cc depth -d 64 -j 1 ../TestDfft 2 1024 > out.txt
           aprun -n $((nnds*rpn)) -N ${rpn} -cc depth -d 64 -j 1 ../TestDfft 2 1024 > out2.txt
           aprun -n $((nnds*rpn)) -N ${rpn} -cc depth -d 64 -j 1 ../TestDfft 2 1024 > out3.txt
           aprun -n $((nnds*rpn)) -N ${rpn} -cc depth -d 64 -j 1 ../TestDfft 2 1024 > out4.txt
           aprun -n $((nnds*rpn)) -N ${rpn} -cc depth -d 64 -j 1 ../TestDfft 2 1024 > out5.txt


EOF
#-----This part submits the script you just created--------------
chmod +x batch2.job
qsub batch2.job
