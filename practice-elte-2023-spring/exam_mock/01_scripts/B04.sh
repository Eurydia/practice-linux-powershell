#!bin/bash

size=$1

for row in `seq 1 $size`
do
    for col in `seq 1 $size`
    do
        echo -n A
    done
    echo
done

# awk -v size=$1 'BEGIN {
#     for (row = 1; row <= size; row++)
#     {
#         for (col = 1; col <= size; col++)
#         {
#             printf "%s", "A";
#         }    
#         printf "\n";
#     }
# }'