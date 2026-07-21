#!/bin/bash

result=$(echo "3 + 5 * 2 - 8 / 4" | bc)

echo "$result"

# Enforce using parentheses PEMDAS
result=$(echo "3 + (5 * 2) - (8 / 4)" | bc)

echo "$result"