#! /bin/bash

files="merged_$1.txt"
branches="branches_$2.txt"
nthreads=$3
dir="rrs_$1_$2_$3"
mkdir $dir; cd $dir
export EXTRA_CLING_ARGS="-O2"
sudo sysctl vm.drop_caches=3
prmon -i 5 -- rootreadspeed --files `cat ../${files}` --trees events --branches `cat ../${branches}` --threads ${nthreads} > rrs.out
