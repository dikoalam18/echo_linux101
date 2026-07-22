#!/bin/bash

for item in {0..99}
do
    echo "$item"

    if (( item == 3 )); then
        break
    fi
done