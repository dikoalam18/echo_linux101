#!/bin/bash

# Ask the cost and quantity for three separate items

read -p "Enter price of Milk: " item_cost_1
read -p "Enter quantity: " item_count_1

echo

read -p "Enter price of Coffee: " item_cost_2
read -p "Enter quantity: " item_count_2

echo

read -p "Enter price of Creamier: " item_cost_3
read -p "Enter quantity: " item_count_3

# Calculate the total
total=$(((item_cost_1 * item_count_1) + (item_cost_2 * item_count_2) + (item_cost_3 * item_count_3)))

# print the total
echo
echo "Total Price: $total"