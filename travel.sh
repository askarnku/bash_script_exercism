#!/bin/bash

PS3='Please enter your choice: ' # Prompt string

options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "You chose choice 1"
            ;;
        "Option 2")
            echo "You chose choice 2"
            ;;
        "Option 3")
            echo "You chose choice 3"
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done
