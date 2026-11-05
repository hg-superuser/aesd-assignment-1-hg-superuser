#!/bin/bash

if [ $# -ne 2 ]
then
    echo "need 2 args"
    exit 1
fi

mkdir -p "$(dirname $1)"

echo $2 > $1

if [ $? -ne 0 ]
then
    echo "Err: command filed"
    exit 1
fi
