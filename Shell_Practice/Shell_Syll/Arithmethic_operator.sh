#!/bin/bash

num1=10
num2=20

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))

#*********************************************

a=10.5
b=20.6

echo "$a+$b" | bc
echo "$a-$b" | bc
echo "$a*$b" | bc
echo "$a/$b" | bc