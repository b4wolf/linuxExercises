#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./rm_n.sh <dir> <n>" 1>&2
    exit
fi

for i in $(find $1 -type f -size +$2c)
do
    rm $i
done
