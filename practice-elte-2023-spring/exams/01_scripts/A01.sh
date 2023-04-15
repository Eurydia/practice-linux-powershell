#!bin/bash

if [[ $# -eq 0 ]]
then
    echo "Please enter a number"
    read P
else
    P=$1
fi

echo $((5*P*P+3*P+1))