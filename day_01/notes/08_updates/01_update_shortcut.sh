#!/bin/bash

result=10

# Original
# result=$((result + 5))

# Shortcut
((result += 5))

# Original
# result=$((result * 10))

# Shortcut
((result *= 10))

echo "$result"