#!bin/bash

file_name=$1

sed -E 's/\b[0-9]{3}\b//g' $file_name | cat