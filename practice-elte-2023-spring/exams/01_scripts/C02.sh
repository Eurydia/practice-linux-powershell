#!bin/bash

count=$1

for i in `seq 1 $count`
do
    echo -n $((-1 + 4 * $i))" "
done