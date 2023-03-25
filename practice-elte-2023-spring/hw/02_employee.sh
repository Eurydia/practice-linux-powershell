#!/bin/sh

# 2. Create a shell script named employee.sh 
# that processes over a text file 
# (the file name is given in the command line as an argument) 
# and answers the following questions! 

# In the text file, we store the data of the workers. 
# In each line you find the name, classification and job(s) of the worker

# e.g. Jakab Gipsz, barman, night , 4-hour on-call,                or
# Csupa Fül, Master Chef, menu planning,kitchen management, cooking,4-hour off-call

# a) Give the workers who are working as barman (only the names), 
# if none, write "NONE".
# b) Who has at least 3 jobs? (list of names)
# c) Read in a job type and give how many people are in that position.

file=$1
job_type=$2

echo "Task A)"
awk '
    BEGIN {
        FS = ",";
        exists = 0;
    } 
    {
        if (NF > 1 && /barman/) {
            print $1;
            exists = 1;
        }
    }
    END {
        if (exists == 0) {
            print "NONE";
        }
    }
' $file


echo "Task B)"
awk '
    BEGIN {
        FS = ",";
    } 
    {
        if (NF - 2 >= 3) {
            print $1;
        }
    }
' $file

echo "Task C)"
awk -v pat="$2" '
    BEGIN {
        FS = ",";
    } 
    {
        if (NF > 1 && $0 ~ pat) {
            print $1;
        }
    }
' $file
