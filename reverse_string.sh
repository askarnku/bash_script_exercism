#!/bin/bash

set -f

orig="$1"
rev=""
len=$((${#orig} - 1))

for (( i="${len}"; i>=0; i--)); do
	char="${orig:i:1}"
	rev+="${char}"
done

echo "$rev"
