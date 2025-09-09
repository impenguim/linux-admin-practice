#!/bin/bash

read -p 'Enter your name: ' username
read -p 'Enter your password: ' password
if [[ ${username} = 'admin' && ${password} = 'password' ]]
then
  echo 'Login Success'
else
  echo 'Wrong Login' >&2
  exit 1
fi

exit 0 
