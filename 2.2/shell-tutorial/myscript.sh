#! /bin/bash


# VARIABLES
# Uppercase by convention
# Letter, numbers, underscores
#
# NAME = "Brad"
# echo "My name is $NAME"

# read -p "Enter your name: " NAME
# echo "My name is ${NAME}"
#
# if ["$NAME" ==  "YES"]
# then
#   echo "Your name is YES"
# else
#   echo "Your name is Not YES"
# fi

# while IFS=, read -r name code; do
#   # do something... Don't forget to skip the header line!
#   [[ "$name" != "Name" ]] && echo "$name"
# done < countries.csv

count=0
while IFS=, read -r name code; do
  # do something...
  [[ "$name" != "Name" ]] && echo "$name"
  [[ "$code" != "Code" ]] && echo "$code"
done < countries.csv; \
echo ">> we found ${count} bad entries"

# INPUT=countries.csv
# OLDIFS=$IFS
# IFS=','
# [ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
# while read country, code
# do
# 	echo "Name : $country"
# 	echo "DOB : $code"
# done < $INPUT
# IFS=$OLDIFS
