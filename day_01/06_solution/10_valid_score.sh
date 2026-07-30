#!/bin/bash
# TO DO: Check if the user has entered a valid score

# Range minimum and maximum bounds
min_number=0
max_number=100

# TO DO: Ask the user to enter a score
read -p "Enter score: " number

# TO DO: Determine if the score is valid
if (( number >= min_number && number <= max_number )); then
    valid_score=true
else
    valid_score=false
fi

# TO DO: Print the result
echo "Valid score: $valid_score"