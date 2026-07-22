#!/bin/bash

read -p "Enter the first number: " first_number
read -p "Enter the second number: " second_number

# arithmetic evaluation
greater_than_equal=$((( first_number >= second_number )) && echo True || echo False)

echo "Greater than equal: $greater_than_equal"