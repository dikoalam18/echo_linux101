#!/bin/bash
# TO DO: Create a running balance calculator

# Initialize total and running variables
total=0
running=true

# TO DO: Create a loop that will continue until the user exits
while $running
do
    read -p "Provide command: " command

    if [ "$command" = "add" ]; then

        # TO DO: Ask for number
        your code here

        # TO DO: Add that number to the total
        your code here

        # TO DO: Print the current total
        your code here

    elif [ "$command" = "sub" ]; then

        # TO DO: Ask for number
        your code here

        # TO DO: Subtract that number from the total
        your code here

        # TO DO: Print the current total
        your code here

    elif [ "$command" = "exit" ]; then
        echo
        echo "bye!"
        running=false
    fi
done