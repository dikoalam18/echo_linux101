#!/bin/bash

read -p "Enter money: " money
read -p "Enter stock: " stock

if (( money >= 100 && stock > 0 )); then
    echo "You can buy the item!"
else
    echo "You can't buy the item"
fi