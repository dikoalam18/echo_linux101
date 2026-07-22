#!/bin/bash

# Ask the user for three values
read -p "Enter expense_1: " expense_1
read -p "Enter expense_2: " expense_2
read -p "Enter expense_3: " expense_3

# Print each information one line at a time
echo
echo "Your expense list are:"
echo "$expense_1"
echo "$expense_2"
echo "$expense_3"