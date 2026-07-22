#!/bin/bash

grades=(85 72 49 90 66 59)
passing=0

for grade in "${grades[@]}"
do
    if (( grade >= 60 )); then
        passing=$((passing + 1))
    fi
done

echo "Passing: $passing"
