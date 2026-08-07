#!/bin/bash
# Demonstrates a basic case statement for the days of the week

read -p "Enter a day (Monday-Sunday): " day

case $day in
    Monday)
        echo "Start of the work week!"
        ;;
    Tuesday|Wednesday|Thursday)
        echo "Middle of the work week."
        ;;
    Friday)
        echo "TGIF! The weekend is coming!"
        ;;
    Saturday|Sunday)
        echo "It's the weekend! Time to relax!"
        ;;
    *)
        echo "Invalid day entered."
        ;;
esac