#!/bin/bash

read -p "Enter the first number: " first_number
read -p "Enter the second number: " second_number

# arithmetic evaluation
less_than_equal=$((( first_number <= second_number )) && echo True || echo False)

echo "Less than equal: $less_than_equal"