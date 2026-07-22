#!/bin/bash

read -p "Login: " login_input

# string comparisons
if [[ "$login_input" == "Yes" ]]; then
    echo "Welcome"
    echo "Back"
fi

echo "End"