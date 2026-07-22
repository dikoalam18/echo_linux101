#!/bin/bash

max_attempt=3
correct_password="pass"

for ((attempt=0; attempt<max_attempt; attempt++))
do
    read -p "Enter password: " password

    if [[ "$password" == "$correct_password" ]]; then
        echo "Access granted"
        break
    fi
done