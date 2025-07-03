#!/bin/bash

echo "Welcome to user management script..!"

read -p "Enter User Name : " username

LOGFILE="Logs/User.log"
select user in useradd passwd userdel show_users
do
    case $user in 

    useradd)
        sudo adduser "$username" --force-badname | tee -a "$LOGFILE"
        echo "User Added Succesfully...$username"    
        echo "" | tee -a "LOGFILE"
        ;;

    passwd)
        sudo passwd "$username" | tee -a "$LOGFILE"
        echo "Password Changed Succesfully...$username"
        echo "" | tee -a "LOGFILE"
        ;;
    
    userdel) 
        sudo userdel "$username"| tee -a "$LOGFILE"
        echo "User Delete Succesfully...$username"
        echo "" | tee -a "LOGFILE"
        ;;

    show_users)
        sudo tail -5 /etc/passwd | tee -a "$LOGFILE"
        echo "See Users....!" 
        echo "" | tee -a "LOGFILE"
        ;;
    
    *)
        echo "Invalied Field.." 
        ;;
    esac
done