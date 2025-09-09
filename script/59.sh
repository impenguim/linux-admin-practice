#!/bin/bash

read -p "Enter the number: " input

if [[ ${input} -eq 100 ]]
then
  echo '100 100 100'
elif [[ ${input} -lt 100 ]]
then
  echo 'less than 100'
else
  echo 'greater than 100'
fi
