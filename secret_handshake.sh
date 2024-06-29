#!/bin/bash

if [[ $1 -gt 31 ]] || [[ $1 -lt 1 ]]; then
    echo "Number should be between 1 and 31 inclusive"
    exit 1
fi

declare res=()
binary=""

to_binary() {
    local num="$1"
    while [[ num -ne '0' ]]; do
        binary=$(($num % 2))"$binary"
        num=$(($num / 2))
    done
    echo $binary
}

# len=

# for (i=)




to_binary "$@"