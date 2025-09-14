#!/bin/bash

# Write a script in which we must a function named as sum, which will be triggered to calculate the sum of 2 numbers provided by user at runtime ?

sum() {
read -p "Enter first number: " num1
read -p "Enter second number: " num2
echo "Sum: $(( num1+num2 ))"
}

sum

