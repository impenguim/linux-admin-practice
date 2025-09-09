#!/bin/bash

# Write a script that will print numbers 1 to 10 on screen using while loop ?

i=1

while [[ ${i} -le 10 ]]
do
  echo ${i}
  (( i++ ))
done

exit 0
