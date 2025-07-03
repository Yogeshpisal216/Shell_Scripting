#!/bin/bash

# a=10

# while [ $a -gt 1 ]
# do
#     echo "$a"
#     a=$(( a-1 ))
# done

for (( i=1; i<=10; i++ ))
do
    echo $i
done