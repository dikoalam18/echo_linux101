#!/bin/bash

read -p "Enter first number: " number1
read -p "Enter second number: " number2

# $((...)) # arithmetic expansion
echo "Difference: $((number1 - number2))"