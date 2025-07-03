#!/bin/bash

LOGFILE="logs/monitore.log"

echo "System Monitore - $(date)" | tee -a "$LOGFILE"

df -h | tee -a "$LOGFILE"

