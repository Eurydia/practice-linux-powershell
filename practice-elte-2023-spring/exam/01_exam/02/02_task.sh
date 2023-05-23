#!bin/bash

if [[ $# -eq 3 ]]
then
    a=$1
    b=$2
    c=$3
else
    echo Enter three numbers
    read $a $b $c
fi

echo -e "$1\n$2\n$3" > temp
sort "./temp" | tee 01_task_out.md
rm temp