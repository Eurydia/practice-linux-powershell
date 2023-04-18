#!bin/bash

word=$1
file_name=$2

grep "^$word" $file_name | wc -l