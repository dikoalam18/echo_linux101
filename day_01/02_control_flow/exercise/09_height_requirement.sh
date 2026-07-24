#!/bin/bash

minimum_height=138

echo
read -p "Enter height (in cm): " user_height

echo

if (( user_height >= minimum_height )); then
    can_enter_ride=true
else
    can_enter_ride=false
fi

echo "Can enter the ride: $can_enter_ride"