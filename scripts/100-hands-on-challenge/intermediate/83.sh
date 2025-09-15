#!/bin/bash

# Write a script that will have a function named as "area" that will take two parameters within the script to calculate the area of rectangle ?

area() {
local WIDTH=$1
local HEIGHT=$2
local AREA=$(( ${WIDTH} * ${HEIGHT} ))

echo "Area of rectangle is: ${AREA}"
}

read -p "Enter width: " WIDTH
read -p "Enter height: " HEIGHT

area "${WIDTH}" "${HEIGHT}"
