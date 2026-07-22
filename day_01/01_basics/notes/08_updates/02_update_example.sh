#!/bin/bash

level=1
echo "Level: $level"

# Player gains XP
# Previously: level=$((level + 1))
((level += 1))

echo "Leveled up! Level: $level"