#!/bin/bash

raining=false
cold=false
trendy=true

if [[ "$raining" == true || "$cold" == true || "$trendy" == true ]]; then
    echo "Wear a jacket"
fi