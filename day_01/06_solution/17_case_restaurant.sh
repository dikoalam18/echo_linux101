#!/bin/bash
# Demonstrates a case statement in a restaurant menu system

echo "=== Welcome to Bash Bistro ==="
echo "1. Pizza - $12.99"
echo "2. Burger - $9.99"
echo "3. Pasta - $11.99"
echo "4. Salad - $7.99"
echo "5. Drink - $2.99"
echo "=============================="

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "You ordered Pizza. Total: $12.99"
        ;;
    2)
        echo "You ordered Burger. Total: $9.99"
        ;;
    3)
        echo "You ordered Pasta. Total: $11.99"
        ;;
    4)
        echo "You ordered Salad. Total: $7.99"
        ;;
    5)
        read -p "Which drink would you like? (soda/coffee/tea): " drink

        case $drink in
            soda|SODA|Soda)
                echo "You ordered Soda. Total: $2.99"
                ;;
            coffee|COFFEE|Coffee)
                echo "You ordered Coffee. Total: $2.99"
                ;;
            tea|TEA|Tea)
                echo "You ordered Tea. Total: $2.99"
                ;;
            *)
                echo "Invalid drink selection."
                ;;
        esac
        ;;
    *)
        echo "Invalid choice. Please select a number from 1 to 5."
        ;;
esac