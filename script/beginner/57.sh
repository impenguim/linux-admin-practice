#!/bin/bash

# Create a script that will print "Even Day" if current date is an even number ?

if (( $(date +%d) % 2 == 0 ))
then
  echo "Even Day"
else
  echo "Odd Day"
fi

exit 0
