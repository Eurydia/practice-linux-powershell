#!bin/bash

while test $# -gt 0
do
    case "$1" in
    -?)
        echo "-g to greet, -l to list dir, -w to see logged users"
        exit 0
        ;;
    -g)
        shift
        echo "Hello"
        ;;
    -l) 
        shift
        ls
        ;;
    -w) 
        shift 
        who
        ;;
    esac
done