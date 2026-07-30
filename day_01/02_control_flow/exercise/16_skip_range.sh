#!/bin/bash
# TO DO: Print numbers from 0 to 99, skipping numbers 20 to 80

for ((item=0; item<100; item++))
do
    # TO DO: Skip numbers 20 to 80
    if [ "$item" -ge 20 ] && [ "$item" -le 80 ]; then
        continue
    fi

    # TO DO: Print the current number
    echo "$item"
done