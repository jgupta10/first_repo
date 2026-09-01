#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "No filename was provided"

elif [ -f "$1" ]; then
    echo "Filename: $1"
    du -h $1 | awk '{print "File size:", $1}'
    wc -l $1 | awk '{print "Number of lines:", $1}'
    wc -m $1 | awk '{print "Number of characters:", $1}'
    grep -c "ATATATAT" $1 | awk '{print " Lines containing ATATATAT:", $1}'
    else
    echo "The supplied file doesn't exist"
fi