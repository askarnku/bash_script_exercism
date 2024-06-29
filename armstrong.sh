#!/usr/bin/env bash

# determin the length of a number
orig=$1
copy=$orig
len=0

while [ "$copy" -ne 0 ]; do
    copy=$(("$copy" / 10))
    ((len++))
done

# divide the number into individual digits
sum=0
copy=$orig
while [ "$copy" -ne 0 ]; do
    	sum=$(( $(($copy % 10))**$len + $sum))
	copy=$(($copy / 10))
done

if [ "$sum" -eq "$orig" ]; then
    echo "true"
else
    echo "false"
fi
