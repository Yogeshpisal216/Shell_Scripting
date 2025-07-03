#!/bin/bash

#Accept two numbers from the user and perform addition, substraction, multiplication, division.

read -p "Enter First Value : " val1
read -p "Enter Second Value : " val2

echo -e "Choose any operator (+,-,*,/) : \c"
read operator

case $operator in
    [+] )
        echo $((val1+val2))
        ;;
    [-] )
        echo $((val1-val2))
        ;;
    [*] )
        echo $((val1*val2))
        ;;
    [/] )
        echo $((val1/val2))
        ;;
    ?)
        echo "Not valied.."
        ;;
esac