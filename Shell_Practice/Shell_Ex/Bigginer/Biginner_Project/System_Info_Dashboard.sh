#!/bin/bash

LOGFILE="Logs/Dashboard.logs"

echo "-----Time Stamp-----"
date | tee -a "$LOGFILE"
echo "" | tee -a "$LOGFILE"

echo "-----Disk Usage-----"
df -h | tee -a "$LOGFILE"
echo "" | tee -a "$LOGFILE"

echo "-----Ram-----"
free | tee -a "$LOGFILE"
echo "" | tee -a "$LOGFILE"

echo "-----Uptime-----"
uptime | tee -a "$LOGFILE"
echo "" | tee -a "$LOGFILE"

echo "***************END***************" | tee -a "$LOGFILE"