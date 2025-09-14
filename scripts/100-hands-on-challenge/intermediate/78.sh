#!/bin/bash

# Write a script that will keep writing user inputs from terminal into a file , until we press CTRL + D to save the changes ?

file_name='output.txt'

echo "Enter the content that needs to written into the file ${file_name}, press CTRL + D to save the changes"

while read line
do
  echo ${line} >> ${file_name}
done
