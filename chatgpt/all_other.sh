#!/bin/bash

#converts to uppercase
make_upper() {
	str="$1"
	str_up="${str^^}"
	echo "$str_up"
}


#converts to lower
make_lower() {
	str="$@"
	str_up="${str,,}"
	echo "$str_up"
}


#Check if 2 strings are identical, if not count the number of letters diffrent
compare_str() {
        str1="$1"
        str2="$2"

        if [[ "${#str1}" -ne "${#str1}" ]]; then
            echo "They are not equal"
            exit 1
        fi
        
        len="${#str1}"
        count=0
        for (( i=0; i<len; i++ )); do
            local char1="${str1:i:1}"
            local char2="${str2:i:1}"
            echo "${char1} vs ${char2}"
            if [ "$char1" != "$char2" ]; then
                    ((count++))
            fi
        done
        
        if [ "$count" -ne 0 ]; then
                echo "They are not equal and they have ${count} differences"
        else
                echo "They are equal"
        fi
}

compare_str $@

