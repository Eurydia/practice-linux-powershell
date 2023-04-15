#!bin/bash


word=$1
new_word=$2

sed -e "s/^$word/$new_word/g" $3 | sed -e "s/$word$/$new_word/g" | cat