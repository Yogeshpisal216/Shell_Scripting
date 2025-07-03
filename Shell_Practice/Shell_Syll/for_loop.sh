#!/bin/bash

#For Loop.

#****************************************************
# for VARIABLE in 1 2 3 4 5 . . N
# do
#     command1
#     command2
#     commandN
# done

for val in 1 2 3 4 5
do 
    echo "$val"
done

# #OR--------------------------------------

# for VARIABLE in file1 file2 file3
# do
#     command1 
#     command2
#     commandN
# done

for char in Yogesh Omkar
do
    echo "$char"
done

# for VARIABLE in $(Linux_Command_Here)
# do
#     command1 
#     command2
#     commandN
# done

# for VARIABLE in {0..10..2}
# do
#     command1 
#     command2
#     commandN
# done

for val1 in {0..10..2}
do
    echo "$val1"
done

# for (( EXP1; EXP2; EXP3 ))
# do
#     command1 
#     command2
#     commandN
# done

for (( i=0; i<5; i++ ))
do
    echo $i
done

#****************************************************

#Use Linux command in for loop.

for command in ls pwd date
do 
    echo "-----------$command------------"
    $command
done





