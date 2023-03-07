#!/bin/bash

if [ $# -ne 2 ]; then
    echo "./rm_n.sh <dir> <n>" 1>&2
fi

for i in $(find $1 -type f -size +$2c)
do
    #echo $i
    rm $i
done