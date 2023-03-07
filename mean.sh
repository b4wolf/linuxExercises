#!/bin/bash
if [ $# -eq 2 ]; then
    file=$2
elif [ $# -eq 1 ]; then
    file="/dev/stdin"
else
    echo "usage: ./mean.sh <column> [file.csv]" 1>&2
    exit
fi
tail -n+2 $file | cut -d',' -f$1 | { sum=0; count=0; while read n; do sum=$(echo "scale=2; $sum + $n" | bc);count=$(($count+1)); done; echo "scale=2; $sum/$count" | bc;} 
