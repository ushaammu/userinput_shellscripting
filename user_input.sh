#!/bin/bash

# Reading user input
read -p "enter ur name: " name
read -p "enter ur age: " age

# Check if name is empty
if [[ -z "$name" ]]; then
    echo "name cannot be empty"
    exit 1
fi

# Validate name (only alphabets and spaces)
if [[ ! "$name" =~ ^[A-Za-z ]+$ ]]; then
    echo "invalid value .....enter the proper name"
    exit 1
fi

# Validate age (only numbers and between 1 and 100)
if [[ ! "$age" =~ ^[0-9]+$ ]] || (( age < 1 || age > 100 )); then
    echo "invalid age"
    exit 1
fi

# Final output
echo "hello $name you are $age years old"
