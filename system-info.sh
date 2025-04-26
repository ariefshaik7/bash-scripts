#!/bin/bash


# Debug Mode
#set -x

set -euo pipefail

print_divider() {
	echo "-------------------------------------------------------------------"
}



echo "================================System Info================================"

hostname=$(hostname)
echo " Hostname:  $hostname"
print_divider

os=$(uname -o)
echo " OS Type: $os "
print_divider

kernel=$(uname -r)
echo " Kernel Version: $kernel "
print_divider

uptime=$(uptime -p)
echo " Pretty uptime: $uptime "
print_divider

echo " Logged-in-users: "
who
print_divider

echo " Memory Info: "
free -h
print_divider

echo " CPU Info: "
lscpu
print_divider

echo " Network Info: "
ip a
print_divider

echo " Disk Usage: "
df -h

echo "======================================================================="

