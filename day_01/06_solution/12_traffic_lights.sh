#!/bin/bash
# TO DO: Ask the user to enter a color

# TO DO: Read the color input from the user
read -p "Please enter a color: " color_input

# Print the following depending on the color input
# "green"  -> print "Go"
# "yellow" -> print "Wait..."
# "red"    -> print "Stop"
# Everything else -> print "Malfunction"

# TO DO: Determine the appropriate action based on the color input
if [ "$color_input" = "green" ]; then
    echo "Go"
elif [ "$color_input" = "yellow" ]; then
    echo "Wait"
elif [ "$color_input" = "red" ]; then
    echo "Stop"
else
    echo "Malfunction"
fi