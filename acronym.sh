#!/usr/bin/env bash

# Join all arguments into one string
a="$*"
b=$(echo "$a" | sed -e 's/-/ /g' -e 's/_/ /g')

# Now split into words and process
IFS=' ' read -r -a words <<< "$b"

res=""

for word in "${words[@]}"; do
	f=${word:0:1}
	b=$(echo "$f" | tr '[:lower:]' '[:upper:]')
	res+=$b
done

echo $res
