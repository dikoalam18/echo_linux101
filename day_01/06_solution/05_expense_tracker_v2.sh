#!/bin/bash

# Ask the user for three values
read -p "Enter expense_1: " expense_1
read -p "Enter expense_2: " expense_2
read -p "Enter expense_3: " expense_3

# Print each information one line at a time
echo
echo "expense_1: $expense_1"
echo "expense_2: $expense_2"
echo "expense_3: $expense_3"

# Calculate the sum of the numbers
total=$(echo "$expense_1 + $expense_2 + $expense_3" | bc)

# Print the total expense
echo
echo "total expense is: $total"