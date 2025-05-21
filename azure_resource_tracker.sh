#!/bin/bash


#######################
#Author: 
#Date: 
#
#Version: v1
#
#This script will report the Azure resource usage
#######################

set -x 

# Azure Account info
# Azure virtual machines
# Azure Storage Accounts
# Azure Function Apps
# Azure AD Users

# list azure account info
echo "print list of account"
az account list

# list virtual machines
echo "Print list of virtual machines"
az vm list

# list storage accounts
echo "Print list of storage accounts"
az storage account list

# list function apps
echo "Print list of function apps"
az functionapp list

#list ad users
echo "Print list of ad users"
az ad user list

