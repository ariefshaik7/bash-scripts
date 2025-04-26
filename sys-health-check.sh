#!/bin/bash

#####################################
# System Health check and Monitoring
#####################################


#debug mode
#set -x

set -euo pipefail

print_divider() {
    echo "----------------------------------------------"
}

echo "======================System Health Check============================"

# RAM
echo " Memory Usage: "
free -h
print_divider

# Storage
echo " Disk Usage: "
df -h
print_divider

# real-time monitoring of system resources
echo " Real time Monitoring: "
sudo apt install htop
htop
print_divider

# System Load
echo "System Load Averages:"
uptime



