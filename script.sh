#!/bin/bash

# Validating that a parameter is given
if [[ -z "$1" ]]; then
  echo "<ERROR> Please define which file you would like to load the list of IPs from."
  echo ""
  echo "usage: ./script.sh filename"
  exit 1
fi

sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n $1 | uniq
