#! /bin/bash

# ECHO COMMAND
echo hello World!

# VARIABLES
# Uppercase by convention
# Letter, numbers, underscores
#
# NAME = "Brad"
# echo "My name is $NAME"

read -p "Enter your name: " NAME
echo "My name is ${NAME}"

if ["$NAME" ==  "YES"]
then
    echo "Your name is YES"
else
  echo "Your name is Not YES"
