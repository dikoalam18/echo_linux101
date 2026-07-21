#!/bin/bash

read -p "Enter first number: " number1
read -p "Enter second number: " number2

# $(...) # command substitution
echo "Division: $(echo "$number1 / $number2" | bc)"

# scale=2 means show 2 digits after the decimal point.
echo "Division: $(echo "scale=2; $number1 / $number2" | bc)"