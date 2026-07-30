#!/bin/bash
# TO DO: Create a simple login system

# Expected username and password (you can change the value)
correct_username="user"
correct_password="pass"

# TO DO: Ask the user to enter their username and password
read -p "Please provide username: " username_input
read -p "Please provide password: " password_input

# TO DO: Determine if the credentials are valid
if [ "$correct_username" = "$username_input" ] && [ "$correct_password" = "$password_input" ]; then
    echo "Access Granted"
else
    echo "Access Denied"
fi