#!/bin/bash

###############################################################################
# Updates package lists and upgrades installed packages.
#
# Author: Arief
# Version: v0.0.1
#
# Usage:
#   ./system_update.sh
#
# Description:
#   Detects the Linux distribution and automatically uses the correct package
#   manager to update and upgrade all system packages.
#
# Supported Distributions:
#   - Ubuntu / Debian (APT)
#   - Fedora / RHEL / CentOS (DNF)
#   - Arch / Manjaro (Pacman)
#   - openSUSE / SLE (Zypper)
#   - Alpine (APK)
#
# Requirements:
#   - Script must be run with sudo or privileges to install updates.
###############################################################################


# Debug mode
#set -x

# Exit on errors, undefined variables, partial pipeline failures
set -euo pipefail

echo "Starting updating Package list"


OS_NAME=$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d '"')
PRETTY_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')


case "$OS_NAME" in
        ubuntu|debian)
		# Debian based systems 
                sudo apt update && sudo apt upgrade -y
                ;;
        fedora|rhel|centos)
		#Red Hat family 
                sudo dnf update -y
                ;;
        arch|manjaro)
		#Arch based systems
                sudo pacman -Syu --noconfirm
                ;;
        opensuse*|suse)
		# openSUSE/SLE systems 
                sudo zypper refresh && sudo zypper update -y
                ;;
        alpine)
		# Alpine Linux 
                sudo apk update && sudo apk upgrade
                ;;
        *)
		# Fallback
                echo "Unsupported Linux Distribution: $PRETTY_NAME"
                ;;
esac

echo "System update completed for: $PRETTY_NAME"


