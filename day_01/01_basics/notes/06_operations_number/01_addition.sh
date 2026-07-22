#!/bin/bash

read -p "Enter first number: " number1
read -p "Enter second number: " number2

# $((...)) # arithmetic expansion
echo "Sum: $((number1 + number2))"