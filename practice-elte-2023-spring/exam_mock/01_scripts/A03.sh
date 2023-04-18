#!bin/bash

start=$1
stop=$2

# while [[ $start -le $stop ]]
while test $start -le $stop
do
    echo -n $((start * start))" "
    ((start++))
done