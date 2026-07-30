#!/bin/bash

# TODO: Ask the user how many items will be calculated
read -p "How many item?: " input_count

total=0
packs=0

# TODO: Use a for loop to ask for more than one cost and count
for ((x=1; x<=input_count; x++))
do
    echo
    read -p "ITEM$x: How much?: " item_cost
    read -p "ITEM$x: How many?: " item_packs

    item_costs=$((item_cost * item_packs))
    total=$((total + item_costs))
    packs=$((packs + item_packs))
done

# TODO: Print the total number of items and the total amount
echo
echo "Total item/s: $packs"
echo "Total Amount: $total"