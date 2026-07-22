#!/bin/bash

battery=100
echo "Battery: $battery"

# Opened Chrome with 10 tabs
battery=$((battery - 40))
echo "After Chrome: $battery"

# Plugged in charger
battery=$((battery + 20))
echo "Charger inserted: $battery"