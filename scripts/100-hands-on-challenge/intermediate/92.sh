#!/bin/bash

# Write a script that will sleep for 100 seconds, but when we trigger the script it must ran in the background mode ?

if [[ "$1" == "bg"  ]]
then
  sleep 100 &
  echo "Running in background."
else
  sleep 100
  echo "Running in foreground."
fi
