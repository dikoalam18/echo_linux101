#!/bin/bash

read -p "Battery percentage: " battery

if (( battery >= 80 )); then
    echo "Full Battery"
elif (( battery >= 40 )); then
    echo "Good Battery"
elif (( battery >= 15 )); then
    echo "Low Battery"
elif (( battery > 0 )); then
    echo "Critically Low Battery"
fi
