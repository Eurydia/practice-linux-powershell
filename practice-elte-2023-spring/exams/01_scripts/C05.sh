#!bin/bash

file_name=$1

awk 'BEGIN {
        sum = 0;
    }
    {
        sum = sum + $2;
    }
    END {
        print sum
    }
' $file_name