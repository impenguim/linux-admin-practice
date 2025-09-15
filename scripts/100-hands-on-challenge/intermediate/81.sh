#!/bin/bash

# Write a script that will generate a factorial of a given number by the user as input ?

read -p "Enter a number: " NUM

FACTORIAL=1

while [[ $NUM -gt 1 ]]
do
  FACTORIAL=$(( FACTORIAL * NUM ))
  NUM=$(( NUM - 1 ))
done

echo "Factorial of number is: ${FACTORIAL}"
