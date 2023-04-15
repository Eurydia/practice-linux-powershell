#!bin/bash

name=$1
file_name=$2

grep -e  "^$name" $file_name | cat