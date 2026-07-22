#!/bin/bash

read -p "Enter age: " age

if (( age >= 18 )); then
    echo "Old enough to watch movie"
else
    echo "Too young to watch movie"
fi
