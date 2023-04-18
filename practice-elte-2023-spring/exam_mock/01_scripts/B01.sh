#!bin/bash

if [[ $# -eq 0 ]]
then
    echo "Please enter three numbers"
    read A B C
else
    A=$1
    B=$2
    C=$3
fi

echo -e "$A\n$B\n$C" > dontlook
echo `sort -n dontlook`
rm dontlook

# awk -v a=$A -v b=$B -v c=$C 'BEGIN {
#         max_v = max(max(a, b), max(b, c));
#         med_v = max(min(a, b), min(b, c));
#         min_v = min(min(a, b), min(b, c));
        
#         print min_v" "med_v" "max_v;
#     }

#     function max(a, b)
#     {
#         return a > b ? a : b
#     }

#     function min(a, b)
#     {
#         return a < b ? a : b
#     }'
