#!/bin/bash

age=19

if [ "$age" -ge 18 ] && [ "$age" -le 30 ]
#if [[ "$age" -ge 18  &&  "$age" -le 30 ]]
# if [ "$age" -ge 18  -a  "$age" -le 30 ]
then 
    echo "Valied age"
else    
    echo "Not valied"
fi