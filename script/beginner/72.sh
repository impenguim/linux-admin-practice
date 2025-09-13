#!/bin/bash

# Write a script that will keep printing odd numbers between 1 to 100 ?

for num in {1..100}
do
  if [[ $((num % 2)) -eq 1 ]]
  then
    echo "${num} is odd number"
  fi
done
