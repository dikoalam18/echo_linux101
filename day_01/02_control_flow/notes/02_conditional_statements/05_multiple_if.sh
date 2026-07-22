#!/bin/bash

grade=85

if (( grade >= 90 )); then
    echo "A"
fi

if (( grade >= 80 )); then
    echo "B"
fi

if (( grade >= 70 )); then
    echo "C"
fi
