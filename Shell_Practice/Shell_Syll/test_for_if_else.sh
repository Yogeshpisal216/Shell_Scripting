#!/bin/bash

echo -e "Enter the name of the file : \c"
read my_file

if [ -e $my_file ]
then 
    echo "Found.."

else
    echo "Not Found**"

fi