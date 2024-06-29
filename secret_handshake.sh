#!/bin/bash

#if number is less than 1 or greater than 31, it exits
if [[ $1 -gt 31 ]] || [[ $1 -lt 1 ]]; then
    echo "Number should be between 1 and 31 inclusive"
    exit 1
fi

#default messages
msg=(" wink "" double wink "" close your eyes "" jump ")

#decimal to binary
binary=""

to_binary() {
    local num="$1"
    while [[ num -ne '0' ]]; do
        binary=$(($num % 2))"$binary"
        num=$(($num / 2))
    done
    echo $binary
}



#    I have binary number which is correct form: 1 2 3 4 5
#    1 num -- check if we should reverse res
#    2 num -- "jump"
#    3 num -- "close your eyes"
#    4 num -- "double blink"
#    5 num -- "wink"

to_binary $1

for (( i=${#binary}; i>=0; i-- )); do
    is_pres=${binary:i:-2}
    if [[ is_pres  ]]
done





