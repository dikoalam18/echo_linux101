#!/bin/bash

read -p "Enter score: " score
perfect_score=100

# arithmetic evaluation
has_perfect_score=$((( score == perfect_score )) && echo True || echo False)

echo "You got a perfect score: $has_perfect_score"