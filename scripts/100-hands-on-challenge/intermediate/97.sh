#!/bin/bash

# Write a script that will validate password strength. Here are few conditions that needs to be validated
# Minimum length to be 10 characters
# Must have both the Small and Upper case letters

password="$1"

if [[ $# -ne 1 ]]
then
  echo "Pass your password as an argument."
  exit 1
fi

if [[ ${#password} -lt 10 ]]
then
   echo "Password is too short (min 10 chars)"
   ok=false
fi

if [[ ! $password =~ [A-Z] ]]
then
   echo "Password must contain at least one uppercase letter"
   ok=false
fi

if [[ ! $password =~ [a-z] ]]
then
  echo "Password must contain at least one lowercase letter"
  ok=false
fi

$ok && echo "Strong password"
