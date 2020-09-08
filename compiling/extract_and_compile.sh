!#/usr/bin/env bash

#Decompresses and Extracts NthPrime
tar -zxf NthPrime.tgz
#Goes into NthPrime Directory
cd /NthPrime || exit
#Compiles
gcc main.c nth_prime.c -o NthPrime

./NthPrime "$1"
