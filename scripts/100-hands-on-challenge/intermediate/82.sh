#!/bin/bash

# Write a script that will check if you are currently logged in as root user or not ?

if [[ "${UID}" -eq 0 ]]
then
  echo "You are currently logged in as root user."
else
  echo "You are currently logged in as non-root user."
fi
