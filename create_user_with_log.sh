#!/bin/bash

# Ask for username
read -p "Enter the new username: " username

# Create the user
sudo useradd -m -s /bin/bash "$username"

# Set the password
echo "Set the password for $username:"
sudo passwd "$username"
