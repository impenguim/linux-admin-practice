#!/bin/bash

# Write a script that will keep printing numbers from 1 to 5, and skip if number is 3 (Use while loop and Continue statement) ?

num=1

while [[ "${num}" -le 5 ]]
do
  if [[ "${num}" -eq 3 ]]
  then
    (( num++ ))
    continue
  fi
  echo "${num}"
  (( num++ ))
done
