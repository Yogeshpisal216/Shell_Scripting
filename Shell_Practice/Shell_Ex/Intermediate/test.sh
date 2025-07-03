#!/bin/bash

#Write a script that counts the number of lines in a file.

filename="$1"

#Count the number of lines.

line_count=$(wc -l < "$filename")
echo "The file $filename has $line_count lines."
#!/bin/bash

#Write a script that counts the number of lines in a file.

filename="$1"

#Count the number of lines.

line_count=$(wc -l < "$filename")
echo "The file $filename has $line_count lines."