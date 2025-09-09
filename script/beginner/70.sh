#!/bin/bash

# Write a script that will keep printing numbers from 1 to 10, if the number in loop is 2 then loop must break and shall not continue to print ?

i=1

while [[ ${i} -le 10 ]]
do
  if [[ ${i} -eq 2 ]]
  then
    break
  fi
  echo "${i}"
  (( i++ ))
done

exit 0
