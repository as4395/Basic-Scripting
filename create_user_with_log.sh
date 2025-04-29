#!/bin/bash

# Ask for username
read -p "Enter the new username: " username

# Create the user
sudo useradd -m -s /bin/bash "$username"

# Set the password
echo "Set the password for $username:"
sudo passwd "$username"

# Add to groups
sudo usermod -aG sudo "$username"

# Set permissions
sudo chmod 750 /home/"$username"

# Log the actions
echo "$(date): Created user $username with sudo access" >> /var/log/user_creation.log

echo "User $username created and configured!"
