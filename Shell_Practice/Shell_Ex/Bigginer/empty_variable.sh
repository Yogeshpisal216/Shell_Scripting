#!/bin/bash

read -p "Enter character : " input

if [ -z "$input" ]
then
    echo "The variable is empty.."
else
    echo "You entered: $input"
fi