#!/bin/bash

read -p "Enter number: " x
echo

echo "Exclusive Range"
(( x > 3 && x < 20 )) && echo True || echo False
echo

echo "Equal or Greater than 3 and Less than 20"
(( x >= 3 && x < 20 )) && echo True || echo False
echo

echo "Greater than 3 and Less than or Equal to 20"
(( x > 3 && x <= 20 )) && echo True || echo False
echo

echo "Inclusive Range"
(( x >= 3 && x <= 20 )) && echo True || echo False