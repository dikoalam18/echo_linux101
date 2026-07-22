#!/bin/bash

expenses=(1500 2300 1200)
total=0

for amount in "${expenses[@]}"
do
    total=$((total + amount))
done

echo "Total expenses: $total"
