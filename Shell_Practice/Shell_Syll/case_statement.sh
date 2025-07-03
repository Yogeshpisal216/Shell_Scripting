#!/bin/bash

# case expression in
#     pattern1 )
#         statements ;;
#     pattern2 )
#         statements ;;
    
# esac

#***********************************************

vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100" ;;
    "van" )
        echo "Rent of $vehicle is 80" ;;
    * )
        echo "Unknown vehicle" ;;
esac

#*************************************************

echo -e "Enter the charater : \c"
read value

case $value in  
    [a-z] )
        echo "User entered $value a to z" ;;
    [A-Z] )
        echo "User entered $value A to Z" ;;
    [0-9] )
        echo "User entered $value 0 to 9" ;;
    ? )
        echo "User entered $value special character" ;;
    *)
        echo "Unknown input.." ;;
esac