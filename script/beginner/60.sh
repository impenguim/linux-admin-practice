#!/bin/bash

read -p "Enter the number: " number

if [[ $((number % 10)) -eq 0 ]]
then
  echo 'divisible by 10'
else
  echo 'not divisible by 10'
fi
