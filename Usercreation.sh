#/bin/bash

"""
I have created this script for creating user using automation. We have to only run this script and put user name we want and it automatically create user and add to group you want.
"""

read -p "Enter user name: " username
read -p "Enter group name: " groupname

# Check if group exists
if ! getent group "$groupname" > /dev/null; then
    echo "Group '$groupname' does not exist. Creating it..."
    sudo groupadd "$groupname"
fi

# Create user if not exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    sudo adduser "$username"
    echo "User '$username' created."
fi

# Add user to group
sudo usermod -aG "$groupname" "$username"
echo "User '$username' added to group '$groupname'."
