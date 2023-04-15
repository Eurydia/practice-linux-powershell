#!bin/bash

gcd=1

A=$1
B=$2

if [[ $A -le $B ]]
then
    min=$A
else
    min=$B
fi

for d in `seq 1 $min` 
do
    test_a=`expr $A % $d`
    test_b=`expr $B % $d`
    if [[ $test_a -eq 0 ]] && [[ $test_b -eq 0 ]]
    then
        gcd=$d
    fi
    ((d++))
done

echo $gcd

# awk -v a=$1 -v b=$2 'BEGIN {
#     gcd = 1;
#     max = a > b ? a : b;

#     for (d = 2; d <= max; d++)
#     {
#         if (a % d == 0 && b % d == 0)
#         {
#             gcd = d;
#         }
#     }
#     print gcd;
# }'