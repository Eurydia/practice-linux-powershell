#!/bin/sh

# 1. Create a shell script named jobs.sh that processes over a text file 
# (given in the command line as an argument) 
# and answers the following questions.
# The text file contains data about violence at work. 

# Line by line, 
# the name of the workplace,
# address, 
# number of incidents of violence in a year,
# number of security guards - separated by commas.

# e.g. Whistling Ltd, 1111 Budapest dog street 6, 5, 3

# a) Give the workplaces where no violent acts have been reported, 
# if none, write "NONE"
# b) Count the total number of security guards according to the data file provided.
# c) Give the names of the workplaces with the highest number of violent incidents are located, give their name(s) and address(es).

file=$1

# Subtask a)
awk '
    BEGIN {
        FS = ","; 
         
        name = $1;
        incidents = $3;
        
        exists = 0;
    } 
    {
        if ($3 == 0)
        {
            print $1;
            exists = 1;
        }
    }
    END {
        if (exists == 0) {
            print "None";
        }
    }
' $file 

# Subtask b)
awk '
    BEGIN {
        FS = ",";
    }
    {
        sum += $4;
    }
    END {
        print sum;
    }
' $file

# Subtask c)
awk '
    BEGIN {
        FS = ",";
        name = "";
        address = "";
        seen = 0;
    }
    {
        if ($3 > seen) {
            seen = $3;
            name = $1;
            address = $2;
        }
    }
    END {
        print name, address;
    }
' $file