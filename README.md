# Automated System Updates Setup

This guide explains how to set up automated system updates using the provided shell script.

## Setup Instructions

1. Make the script executable:
```bash
chmod +x auto_update.sh
```

2. Create the log file with proper permissions:
```bash
sudo touch /var/log/auto_update.log
sudo chmod 644 /var/log/auto_update.log
```

3. Edit the crontab to run the script:
```bash
sudo crontab -e
```

4. Add the following line to run updates daily at 3 AM:
```
0 3 * * * /home/mark/automation/scripts/auto_update.sh
```

## Log File
Updates are logged to `/var/log/auto_update.log`. You can view the logs using:
```bash
cat /var/log/auto_update.log
```

## Note
The script requires sudo privileges to run updates. Make sure the crontab is set up using sudo crontab -e to run with the necessary permissions.
