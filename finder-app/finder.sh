#!/bin/bash
#echo "OK"
#
#1 - dir
#2 - str
if [ -z "$1" -o -z "$2" ]
then
    echo "Wrong parameters"
    exit 1
fi

if [ ! -d "$1" ]
then
    echo "Dir is incorrect"
    exit 1
fi

N=$(find "$1" -type f | wc -l)

RES=$(grep -r "$2" "$1" | wc -l)

#echo "Files [$N] Matched [$RES]"

echo "The number of files are ${N} and the number of matching lines are ${RES}"
