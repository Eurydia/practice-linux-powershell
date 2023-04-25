#!bin/bash

file_name=$1

awk '{
    if (NR % 2 == 1) 
    {
        print $0;
    }
}' $1