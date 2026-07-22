#!/bin/bash

while true
do
    read -p "Provide command: " command

    if [[ "$command" == "command 1" ]]; then
        echo "command 1 done"
    elif [[ "$command" == "command 2" ]]; then
        echo "command 2 done"
    elif [[ "$command" == "command 3" ]]; then
        echo "command 3 done"
    elif [[ "$command" == "exit" ]]; then
        break
    fi
done