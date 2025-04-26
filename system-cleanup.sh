#!/bin/bash

#######################################
# Cleaning unnecessary files and cache
# Remove unused packages (dependencies) 
#######################################


# Debug mode
#set -x

# Exit on errors, undefined variables, partial pipeline failures
set -euo pipefail


OS_NAME=$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d '"')
PRETTY_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

case "$OS_NAME" in
        ubuntu|debian)
		# Debian based systems
                sudo apt autoremove   
		sudo apt clean        
		sudo apt autoclean   
                ;;
        fedora|rhel|centos)
		#Red Hat family 
                sudo dnf autoremove
		sudo dnf clean all
                ;;
        arch|manjaro)
		#Arch based systems 
		sudo pacman -Sc
                ;;
        opensuse*|suse)
		# openSUSE/SLE systems
                sudo zypper clean --all
                ;;
	alpine)
		# Alpine Linux 
		echo "No built-in autoremove, but Alpine keeps things minimal already"
		echo "Run ' sudo rm -rf /var/cache/apk/* ' if you wish to remove package cache"
                ;;
        *)
		# Fallback
                echo "Unsupported Linux Distribution: $PRETTY_NAME"
                ;;
esac

echo "System clean up completed for: $PRETTY_NAME"

