#!/bin/bash

entry="$@"

IFS=' ' read -ra nums <<< "$entry"

if [ ${#nums[@]} -lt 2 ] || [ ${#nums[@]} -gt 2 ]; then
    echo "You have to enter exactly two numbers"
    exit 1
fi


if [ ${nums[0]} -eq ${nums[1]} ]; then
    echo "They are equal"
elif [ ${nums[0]} -ne ${nums[1]} ]; then
    echo "they are not equal"
else
    echo "Something is wrong"
fi

