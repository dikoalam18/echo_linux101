#!/bin/bash

balance=150
price=200

if (( balance >= price )); then
    echo "Payment successful"
else
    echo "Insufficient funds"
fi
