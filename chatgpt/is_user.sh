#!/bin/bash

# Function to ensure the script runs with sudo
ensure_sudo() {
    if [ "$EUID" -ne 0 ]; then
        echo "Checking for sudo access..."
        # Prompt for sudo password explicitly
        sudo -v
        if [ $? -eq 0 ]; then
            echo "Sudo access granted. Running script..."
            # Use exec to replace the shell with sudo and pass all arguments
            exec sudo bash "$0" "$@"
        else
            echo "Failed to obtain sudo access."
            exit 1
        fi
    fi
}

# Ensure the script is running with sudo
ensure_sudo

echo "$1"
# Check that a username is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

user_name="$1"

# Output for debugging: showing which username is checked
echo "Checking for user: '$user_name'"

# Check if the user exists in /etc/passwd
if grep -q "^$user_name:" /etc/passwd; then
    echo "User '$user_name' exists."
else
    echo "User '$user_name' does not exist."
fi
