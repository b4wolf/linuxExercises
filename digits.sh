#!/bin/bash
sum=0
for i in {1000..2000}
do
if echo "$i" | grep "[10]\{4\}"; then
    sum=$(($sum+$i))
fi
done
echo $sum
#echo {1000..2000} | grep "[10]\{4\}" | sed 