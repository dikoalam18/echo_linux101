#!/bin/bash

# Range minimum and maximum bounds
min_number=0
max_number=100

# Enter user input
read -p "Enter score: " number

# Notify user if the number is a valid score
if (( number >= min_number && number <= max_number )); then
    valid_score=true
else
    valid_score=false
fi

echo "Valid score: $valid_score"