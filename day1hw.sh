#!/bin/bash
myfilename=$1

if [ -z "$myfilename" ]; then
  echo "Please provide a filename as the first command line argument."
  exit 1
fi

echo "You provided a filename: $myfilename"

if [ -f "$myfilename" ]; then
  echo "The file $myfilename exists."
  humanreadable=$(du -h "$myfilename" | cut -f1)
  echo "File size: $humanreadable"

  numlines=$(wc -l < "$myfilename")
  echo "Number of lines: $numlines"

  numchars=$(wc -m < "$myfilename" | cut -d' ' -f1)
  echo "Number of characters: $numchars"

  numATATATAT=$(grep -c "ATATATAT" "$myfilename")
  echo "ATATATAT count: $numATATATAT"
else
  echo "Error: The file $myfilename does not exist."
  exit 1
fi