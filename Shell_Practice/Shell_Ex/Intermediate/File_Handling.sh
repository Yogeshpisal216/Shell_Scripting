#!/bin/bash

#Write a script that counts the number of lines in a file.

filename="test.txt"

#Count the number of lines.

line_count=$(wc -l < "$filename")
echo "The file $filename has $line_count lines."

#-------------------------------------------------------------

#Create a backup of a specified file by appending the current data to the filename.
date_stamp=${date}
file="Backup"

backup="${file}_${date_stamp}"

# cp $filename $backup

cp $filename $backup