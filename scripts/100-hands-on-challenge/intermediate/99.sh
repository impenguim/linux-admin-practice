#!/bin/bash

# Write a script that will print a number in reverse order. Script will take input number as argument and if argument is missing then it must through an error to provide the number in the argument ?

if [[ $# -eq 0 ]]
then
  echo "Provide one or more arguments."
  exit 1
fi

for num in "$@"
do
  if [[ ! ${num} =~ ^[0-9]+$ ]]
  then
    echo "Provide number as an argument."
    exit 1
  fi
  echo ${num} | fold -w1 | tac | tr -d '\n'
  echo
done 
