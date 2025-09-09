#!/bin/bash

# Write a script that will ask a number from user and then using if condition verify if number is divisible by 3 or 5 (any one) , if condition meets then print "Divisible" else print "Not Divisible" ?

read -p 'Enter a number: ' num

if (( num % 3 == 0 || num % 5 == 0 ))
then
  echo 'Divisible'
else
  echo 'Not Divisible'
fi

exit 0
