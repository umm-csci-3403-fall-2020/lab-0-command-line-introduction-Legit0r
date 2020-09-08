!#/usr/bin/env bash

n=$1
dir=$2

tar zxf NthPrime.tgz --directory "$dir"

cd "$dir"/NthPrime || exit

gcc -o NthPrime main.c nth_prime.c

./NthPrime "$n"
