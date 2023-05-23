#!bin/bash

file_name=$1

awk 'BEGIN {
        FS=",";
        sum=0;
    }
    {
        sum = sum + $2;
    }
    END {
        print sum;
    }
' $1