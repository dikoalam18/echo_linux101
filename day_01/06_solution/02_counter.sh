#!/bin/bash

counter=0
echo "Counter: $counter"

# Add one to the counter
counter=$((counter + 1))
echo "Counter: $counter"

# Multiply the counter by 10
counter=$((counter * 10))
echo "Counter: $counter"

# Decrease the counter by 4
counter=$((counter - 4))
echo "Counter: $counter"