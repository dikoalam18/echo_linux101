#!/bin/bash

battery=100
echo "Battery: $battery"

# Opened Chrome with 10 tabs
# Previously: battery=$((battery - 40))
((battery -= 40))

echo "After Chrome: $battery"

# Plugged in charger
# Previously: battery=$((battery + 20))
((battery += 20))

echo "Charger inserted: $battery"