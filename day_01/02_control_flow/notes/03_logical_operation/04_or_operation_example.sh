#!/bin/bash

read -p "Continue? " response

if [[ "$response" == "yes" || "$response" == "YES" ]]; then
    echo "We will continue!"
fi