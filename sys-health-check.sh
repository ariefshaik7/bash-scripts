#!/bin/bash


#########################################################################
# Simple script to perform system health checks.
#
# Author: Arief
# Version: v0.0.1
# License: MIT
#
# Usage:
#   ./system_health.sh
#
# Description:
#   Displays system memory usage, disk usage, system load, and launches
#   a real-time system monitor (htop). This is useful for quick diagnostics.
#
# Notes:
#   - Requires 'htop' to be installed.
#########################################################################


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

# System Load
echo "System Load Averages:"
uptime

# Check for htop
if ! command -v htop &> /dev/null; then
    echo "Note: 'htop' is not installed.Install htop to use the real-time monitor."
    exit 1
else
    echo "Launching real-time monitoring tool (htop)..."
    htop
fi 



