#!/bin/bash

URL="https://example.com"
LOG_FILE="website_status.log"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

if [ "$STATUS" -eq 200 ]; then
    echo "$(date) - $URL is UP" >> "$LOG_FILE"
else
    echo "$(date) - $URL is DOWN (Status: $STATUS)" >> "$LOG_FILE"
fi
