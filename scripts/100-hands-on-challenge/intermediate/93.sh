#!/bin/bash

# Write a script that will take 2 command line arguments (numbers) from user and then print the sum on screen ?

sum() {
local num1=$1
local num2=$2
local sum=$(( $1 + $2 ))
echo "Sum of numbers: ${sum}"
}

# [0-9]+ : 하나 이상의 숫자를 표현하는 정규표현식
# ^[0-9]+$ : 문자열 전체가 숫자 하나 이상으로만 이루어져야 함

if [[ $# -ne 2 || ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]]
then
  echo "Give two numeric arguments." 
  exit 1
fi

sum $1 $2 
