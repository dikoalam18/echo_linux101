#!/bin/bash

read -p "You said: " you_said

if [[ "$you_said" == "Wish" ]]; then
    echo "107.5"
elif [[ "$you_said" == "Hello" ]]; then
    echo "...it's me"
elif [[ "$you_said" == "Jopay" ]]; then
    echo "...kamusta ka na"
elif [[ "$you_said" == "Black Pink" ]]; then
    echo "...in your area"
fi
