#!/bin/bash

# Write a script that will ask user to input directory path and script will count total number of files in the given directory ?

read -p "Input a directory path: " path

if [[ ! -d "${path}" ]]
then
  echo "Path ${path} is not a directory."
  exit 1
fi

result=$(find "${path}" maxdepth 1 -type f | wc -l)

echo "Total number of files in path: ${result}" 
