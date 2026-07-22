#!/bin/bash

# decalare as integer
declare -i number1
declare -i number2
declare -i total

# Doing actual addition
read -p "Enter first number: " number1
read -p "Enter second number: " number2
total=number1+number2
echo "Total: $total"