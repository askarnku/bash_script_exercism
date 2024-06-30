
#!/bin/bash

# List files separated by space
name="$@"

# User types ./is_file.sh <file_name> <file_name>
IFS=' ' read -r -a files <<< "$name"

for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        echo "${file} does exist and:"
        if [ -d "$file" ]; then
            echo "it is a directory"
        elif [ -f "$file" ]; then
            echo "it is a regular file"
        else
            echo "it is either a symlink or another type of file"
        fi
    else
        echo "file name: $file does not exist"
    fi
done




