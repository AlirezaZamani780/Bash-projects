#!/bin/bash

LOG_FILE="cpu_temp.log"

while true; do
    TEMP=$(sensors | grep 'Package id 0' | awk '{print $4}')
    echo "$(date) - CPU Temperature: $TEMP" >> "$LOG_FILE"
    sleep 10
done
