#!/bin/bash

# #Configuration.

# Percentage=90
# LogFile="Logs/Disk_Usage.logs"
# Email="yogesh.p@philmcgi.com"
# # command="df -h"

# #Get disk usage and check each line.

# if [ "df -h" -ge "$Percentage" ];
# then
#     echo "Disk is over than 90% please free now..." | tee -a "$LogFile"
#     echo "Disk full" | mail -s "Disk is full on $(hostname -I)" "$Email"
# fi
#****************************************************************************

# Configuration
THRESHOLD=10
LOGFILE="/var/log/disk_usage_alert.log"
EMAIL="yogesh.p@philmcgi.com"   # Replace with your actual email

# Get disk usage and check each line
df -h | awk 'NR>1 {print $5, $6}' | while read output; do
    usep=$(echo $output | awk '{print $1}' | tr -d '%')
    partition=$(echo $output | awk '{print $2}')

    if [ "$usep" -ge "$THRESHOLD" ]; then
        message="Disk space alert: Partition \"$partition\" is ${usep}% full."
        echo "$(date): $message" | tee -a "$LOGFILE"

        # Send email alert (uncomment if mail is configured)
        echo "$message" | mail -s "Disk Space Alert on $(hostname)" "$EMAIL"
    fi
done