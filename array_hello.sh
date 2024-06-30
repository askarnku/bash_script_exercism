#!/bin/bash

var="Hello World"

IFS=',' read -ra words <<< "${var}"

for word in "${words[@]}"; do
        echo "$word"
done
