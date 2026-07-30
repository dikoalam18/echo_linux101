#!/bin/bash
# TO DO: Search for an item in a list

# Define a list of items
items=("rice" "noodles" "toyo" "spam" "coffee")
item_to_find="spam"

# TO DO: Search for the item in the list
for item in "${items[@]}"
do

    # TO DO: Check if the current item matches the item to find
    if [ "$item" = "$item_to_find" ]; then

        # TO DO: Print the item and exit the loop
        echo "$item"
        break
    fi
done
