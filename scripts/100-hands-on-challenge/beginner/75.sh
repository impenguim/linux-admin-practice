#!/bin/bash

# Write a script that will ask 2 numbers from user and then prints the multiplication of given 2 numbers ?

read -p "Enter first number: " num1
read -p "Enter second number: " num2

multi=$((num1 * num2))

echo "Multiplication result is: ${multi}"
