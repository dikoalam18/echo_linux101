#!/bin/bash

read -p "Enter the first number: " first_number
read -p "Enter the second number: " second_number

# arithmetic evaluation
less_than=$((( first_number < second_number )) && echo True || echo False)

echo "Less than: $less_than"