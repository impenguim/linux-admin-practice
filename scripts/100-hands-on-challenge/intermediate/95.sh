#!/bin/bash

# Write a script that will allow the user choose a color and shows a comment against that color (using case statement) ?

read -a colors -p "Choose one or more colors in options(red, green, blue): "

for color in "${colors[@]}"
do
  case ${color} in
    red) echo "red!" ;;
    green) echo "green!" ;;
    blue) echo "blue!" ;;
    *) echo "Choose a color only in options." ;;
  esac
done

#echo "Enter colors (one per line). Press Ctrl+D to stop."

#while read color
#do
#  case ${color} in
#    red) echo "red!" ;;
#    green) echo "green!" ;;
#    blue) echo "blue!" ;;
#    *) echo "Choose a color only in options." ;
#  esac
#done
