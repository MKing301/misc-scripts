#!/bin/bash

# Log file for update output
LOG_FILE="/var/log/auto_update.log"

# Get current timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Echo start of update to log file
echo "[$TIMESTAMP] Starting system update" >> "$LOG_FILE"

# Run update command and log output
sudo nala upgrade -y >> "$LOG_FILE" 2>&1

# Echo completion
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
echo "[$TIMESTAMP] Update completed" >> "$LOG_FILE"
