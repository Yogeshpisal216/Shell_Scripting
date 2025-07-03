#!/bin/bash

echo "Welcome to FTP user management script..!"

read -p "Create the directory :- " dir_name
read -p "Enter User Name : " username

LOGFILE="Logs/User.log"
select user in mkdir cd pwd useradd passwd usermod cat show_users
do
    case $user in 

    mkdir)
        sudo mkdir "$dir_name"
        ;; 

    cd) 
        cd "$dir_name" 
        ;;

    pwd)
        pwd    
        ;;

    useradd)
        sudo adduser --home=/home/itadmin/YOGI/RND/Shell_Practice/Shell_Ex/Intermediate/"$dir_name" "$username"  --force-badname 
        echo "User Added Succesfully...$username"    
        echo "" | tee -a "LOGFILE"
        ;;

    passwd)
        sudo passwd "$username" 
        echo "Password Changed Succesfully...$username"
        echo "" | tee -a "LOGFILE"
        ;;
    
    usermod)
        sudo usermod -s /sbin/nologin "$username"
        sudo usermod -d /home/itadmin/YOGI/RND/Shell_Practice/Shell_Ex/Intermediate/"$dir_name" "$username"
        ;;

    cat)
        sudo cat vsftpd.userlist >> "$username"
        ;;

    show_users)
        sudo tail -5 /etc/passwd 
        echo "See Users....!" 
        echo "" | tee -a "LOGFILE"
        ;;
    
    *)
        echo "Invalied Field.." 
        ;;
    esac
done