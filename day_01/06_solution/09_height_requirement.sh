#!/bin/bash
# TO DO: Check if the user is tall enough to enter the ride

minimum_height=138

echo
read -p "Enter height (in cm): " user_height

echo

# TO DO: Determine if the user can enter the ride
if (( user_height >= minimum_height )); then
    can_enter_ride=true
else
    can_enter_ride=false
fi

# TO DO: Print the result
echo "Can enter the ride: $can_enter_ride"