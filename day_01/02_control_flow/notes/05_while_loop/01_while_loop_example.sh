#!/bin/bash

read -p "Password: " password

while [[ "$password" != "pass" ]]
do
    read -p "Password: " password
done