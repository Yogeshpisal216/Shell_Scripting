#!/bin/bash

age=19
year=35

if [ "$age" -eq 18 ] || [ "$year" -eq 2025 ]
# if [ "$age" -gt 18 -o "$year" -lt 30 ]
then 
    echo "Valied age"
else    
    echo "Not valied"
fi