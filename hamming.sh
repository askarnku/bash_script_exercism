#!/usr/bin/env bash

# bash accepts 2 arguements (strand1 and strand2)
# find the length of the strand1 and strand2
# if they differ, return "strands must be of equal length"
# if they are equal, iterate through each letter and count the differences
# return the difference

#first_char=${string:0:1}

a=$1
b=$2
res=0

if [ ${#a} -ne ${#b} ]; then
    echo "strands must be of equal length"
else
    for (( i=0; i<${#a}; i++ )); do
        if [ ${a:i:$((i+1))} -ne ${b:i:$((i+1))} ]; then
            ((res++))
    done
fi

echo $res
