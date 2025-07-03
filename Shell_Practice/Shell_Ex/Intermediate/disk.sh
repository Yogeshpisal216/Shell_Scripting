#!/bin/bash

#CPU, RAM and Disk_Usage cheking and store logs also alter on mail if it is exist limit.

LOGFILE="disk.log"
EMAIL="yogeshpisal216@gmail.com"
THRESHOLD_DISK=90
THRESHOLD_RAM=90
THRESHOLD_CPU=75

echo "===== $(date '+%Y-%m-%d %H:%M:%S') =====" | tee -a "$LOGFILE"

#Disk Usage and Alert.

echo "[Disk Usage]:" | tee -a "$LOGFILE"
df -h | tee -a "$LOGFILE"


df -h | awk 'NR>1 {print $5 " " $6}' | while read Use Mounted; do
        use=${Use%?}

        if [ "$use" -ge "$THRESHOLD_DISK" ]; then
            msg="Disk Usage on $Mounted is at ${use}%"
            echo "$msg" | tee -a "$LOGFILE"
            echo "$msg" | mail -s "Disk Alert on $(hostname)" "$EMAIL"

        fi
    done

#Ram Usage and Alert.

echo -e "\n[RAM Usage]:" | tee -a "$LOGFILE"
free -h | tee -a "$LOGFILE"


used_ram=$(free | awk '/Mem:/ {print $3/$2 * 100.0}')
ram_int=${used_ram%.*}

if [ "$ram_int" -ge "$THRESHOLD_RAM" ]; then
    msg="⚠️ RAM usage is at ${ram_int}%"
    echo "$msg" | tee -a "$LOGFILE"
    echo "$msg" | mail -s "RAM Alert on $(hostname)" "$EMAIL"
fi


#CPU Usage and Alert.

echo -e "\n[CPU Usage]:" | tee -a "$LOGFILE"
top -bn1 | grep "Cpu(s)" | tee -a "$LOGFILE"


cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
cpu_used=$(echo "100 - $cpu_idle" | bc)
cpu_int=${cpu_used%.*}
if [ "$cpu_int" -ge "$THRESHOLD_CPU" ]; then
    msg="⚠️ CPU usage is at ${cpu_int}%"
    echo "$msg" | tee -a "$LOGFILE"
    echo "$msg" | mail -s "CPU Alert on $(hostname)" "$EMAIL"
fi


echo -e "\n ----- END ----- \n" | tee -a "$LOGFILE"