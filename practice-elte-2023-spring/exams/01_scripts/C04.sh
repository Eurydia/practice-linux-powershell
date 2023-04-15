#!bin/bash

size=$1

if [[ $size -eq 1 ]]
then
    echo A
    exit 0
fi

if [[ $size -eq 2 ]]
then
    echo AA
    echo AA
    exit 0
fi


print_cap $size
echo

for r in `seq 1 $((size - 2))`
do
    print_edge $size
    echo
done

print_cap $size




print_edge() 
{
    echo -n A
    for col in `seq 1 $(($1 - 2))`
    do
            echo -n " "
    done
    echo -n A
}

print_cap() 
{
    for col in `seq 1 $1`
    do
        echo -n A
    done
}
