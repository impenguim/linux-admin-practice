#!/bin/bash

# Write a script that will take 2 command line arguments (numbers) from user and then print the sum on screen, if user don’t input 2 numbers as argument, then display an error message ?

if [[ $# -ne 2 || ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]]
then
  echo "Give two numeric arguments."
  exit 1
fi

echo $(($1+$2))
