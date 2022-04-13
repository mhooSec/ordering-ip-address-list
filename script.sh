#!/bin/bash

# Validating that a parameter is given by checking that $1 is not empty
if [[ -z "$1" ]]; then
  echo "<ERROR> Please define which file you would like to load the list of IPs from."
  echo ""
  echo "Usage: ./script.sh filename"
  exit 1
fi

# Proceeding to sort input and remove duplicates. Output will be shown on screen
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n $1 | uniq
# "-t ." specifies that input numbers are separated by a dot
# "-k <opts>" sorts data using the given column number. For example, "-k 2" would sort using the second column of data. "-k 3,3n -k4,4n" sorts each column. First, it will sort the 3rd column, and then the 4th column.
# "-n" gives the instruction to the script to sort according to numerical values
