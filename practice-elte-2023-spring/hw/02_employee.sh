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

# Subtask a)

awk '
    BEGIN {
        FS=","
    }  
    {
        if (NF > 1 && /barman/) {
            print $1;
        }
    }
' $file