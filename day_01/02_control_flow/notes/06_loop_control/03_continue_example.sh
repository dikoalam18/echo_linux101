#!/bin/bash

for item in {0..99}
do
    if (( item == 3 )); then
        continue
    fi

    echo "$item"
done