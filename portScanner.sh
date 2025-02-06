#!/bin/bash

IP="127.0.0.1"  # Change this to scan a different IP
PORTS=(22 80 443 3306)  # List of ports to check

for PORT in "${PORTS[@]}"; do
    timeout 1 bash -c "echo > /dev/tcp/$IP/$PORT" 2>/dev/null &&
    echo "Port $PORT is OPEN" ||
    echo "Port $PORT is CLOSED"
done
