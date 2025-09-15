#!/bin/bash

# Write a script which will print substring "like bash" from the given string "I like bash scripting" ?

STR="I like bash scripting"
SUBSTR=${STR:2:9}

echo ${SUBSTR}


