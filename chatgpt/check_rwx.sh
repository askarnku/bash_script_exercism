#!/bin/bash

#usage:
#if one argument given, it is implied to check current folder
#if two arguments given, it implies first parameter is file or folder name, second parameter is path/to/file_or_folder

f="$1"
path="$2"

if [ -z "$path" ]; then
    

echo "file name is: $f"
echo "folder name is: $path"

