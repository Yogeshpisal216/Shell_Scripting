#!/bin/bash

# while [ condition ]
# do  
#     command1
#     command2
#     command3
# done

count=1

while [ $count -lt 10 ]
do  
    echo "$count"
    count=$(( count+1 ))
done
echo "1"

a=1

while [ $a -le 10 ]
do  
    echo "$a"
    (( a++ ))
done
echo "2"

#Sleep.

b=1

while [ $b -le 5 ]
do  
    echo "$b"
    sleep 1
done
echo "3"

#Read a file content.
#1.
while read p
do
    echo $p
done < Array.sh

#2.
cat Array.sh | while read p
do
    echo $p
done