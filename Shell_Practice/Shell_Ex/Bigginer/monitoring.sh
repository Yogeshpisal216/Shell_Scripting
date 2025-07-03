#!/bin/bash
#********************************************************************************************
# | tee -a "$LOGFILE"

#--> | = This is pipe Take left command output and send right command.

#--> tee = tee command reads from standard input and writes it to standard output and files.

#--> -a = -a is flag to append data to file.

#--> "$LOGFILE" = This is path to store data.
#********************************************************************************************


LOGFILE="logs/monitore.log"
select option in disk_usage ram uptime memory_usage List_block_devices ip ping whoami
do

    case $option in
    disk_usage)
        echo "#System Disk Usage" | tee -a "$LOGFILE"
        df -h | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;

    ram)
        echo "#System Ram" | tee -a "$LOGFILE"
        free -h | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;
        
    uptime)
        echo "#System Uptime" | tee -a "$LOGFILE"
        uptime | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;

    memory_usage)
        echo "#System Memory Usage" | tee -a "$LOGFILE"
        free -m | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;

    List_block_devices)
        echo "#System File System" | tee -a "$LOGFILE"
        lsblk | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;

    ip)
        echo "#System IP Address" | tee -a "$LOGFILE"
        hostname -I | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;
        
    ping)
        echo "#System Network Performance" | tee -a "$LOGFILE"
        ping 10.10.10.197 | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;

    whoami)
        echo "#System Current User" | tee -a "$LOGFILE"
        whoami | tee -a "$LOGFILE"
        echo "" | tee -a "$LOGFILE"
        ;;

    *)
            echo "Invalied...";;
    esac
done

#Run this using bash command.
#-->bash select_loop.sh
