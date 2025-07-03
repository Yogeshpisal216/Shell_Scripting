#!/bin/bash

#Write function to add two numbers.

add() {
    num1=$1
    num2=$2
    echo $(($num1+$num2))
}

read -p "Value first : " a
read -p "Value second : " b

add "$a" "$b"


