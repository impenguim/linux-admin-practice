#!/bin/bash

# Create a script that will check if number is less 100 and then prints "less than 100" else prints "greater than 100" ?

read -p "Enter a number: " input

if [[ ${input} -eq 100 ]]
then
  echo '100 100 100'
elif [[ ${input} -lt 100 ]]
then
  echo 'less than 100'
else
  echo 'greater than 100'
fi
