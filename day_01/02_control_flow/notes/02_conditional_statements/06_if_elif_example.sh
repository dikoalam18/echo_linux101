#!/bin/bash

grade=85

if (( grade >= 90 )); then
    echo "A"
elif (( grade >= 80 )); then
    echo "B"
elif (( grade >= 70 )); then
    echo "C"
fi
