#!/bin/bash

# Create a script that will check if number is divisible by 10 and then prints "divisible by 10" else prints "not divisible by 10"  ?

read -p "Enter a number: " number

if (( number % 10 == 0 ))
then
  echo 'divisible by 10'
else
  echo 'not divisible by 10'
fi
