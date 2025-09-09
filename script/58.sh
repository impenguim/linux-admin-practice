#!/bin/bash

HOUR=$(date +%H)

if (( ${HOUR} % 2 == 0 ))
then
  echo 'OK'
else
  echo 'Not OK'
fi

exit 0
