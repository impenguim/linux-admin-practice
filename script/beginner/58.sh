#!/bin/bash

# Create a script that will print "OK" if current hour is an even number ?

HOUR=$(date +%H)

if (( ${HOUR} % 2 == 0 ))
then
  echo 'OK'
else
  echo 'Not OK'
fi

exit 0
