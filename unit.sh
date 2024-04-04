#!/bin/bash

# Hardcoded value
number=15

# Checking if the number is greater than 10
if [ $number -gt 10 ]; then
    echo "The number is greater than 10."
# If not, then it must be less than or equal to 10
else
    echo "The number is less than or equal to 10."
fi
