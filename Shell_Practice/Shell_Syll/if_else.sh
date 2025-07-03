#!/bin/bash

# *Operators and it’s symbols.

# Equal                 =  -eq/==
# Greaterthanorequalto  =  -ge
# Lessthanorequalto     =  -le
# NotEqual              =  -ne/!=
# GreaterThan           =  -gt
# LessThan              =  -lt

# count=10

# if [[ $count -ne 1 ]]
# then
#         echo "Value is greter"
# else
#         echo "Value is less"
# fi

read -p "Enter the Username : " Username
read -p "Enter the Password : " Password

username="Yogesh"
password="abc.123"

if [ $Username -eq $username ]
then
        echo "Username is correct.."

elif [ $Password -eq $password ]
then
        echo "Password is correct.."
        echo "User login succesfully...."

else
        echo "Invalied user.."
fi
