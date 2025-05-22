#!/bin/bash

##############################################################
# This script lists Azure resources across common services.
# Author: Arief
# Version: v0.0.3
#
# Supported services:
# - Azure Virtual Machines (vm)
# - Azure Blob Storage (storage)
# - Azure SQL/MySQL/PostgreSQL (db)
# - Azure Cosmos DB (cosmos)
# - Azure Functions (function)
# - Azure Managed Disks (disk)
# - Load Balancer / Application Gateway (lb)
# - Azure Front Door / CDN (cdn)
# - Monitor / Log Analytics (monitor)
# - Notification Hubs / Event Grid (event)
# - Service Bus / Queue Storage (queue)
# - DNS Zones (dns)
# - Virtual Networks (network)
# - Azure Active Directory Users (ad)
# - Azure Resource Groups (rg)
#
# Usage: ./azure_resource_list.sh <service_name>
# Example: ./azure_resource_list.sh vm
##############################################################

if [ $# -ne 1 ]; then
    echo "Usage: $0 <service-name>"
    exit 1
fi

SERVICE=$1

if ! command -v az &> /dev/null; then
    echo "Azure CLI is not installed. Please install it and try again."
    exit 1
fi

if [ ! -d ~/.azure ]; then
    echo "Azure CLI is not configured. Please run 'az login' and try again."
    exit 1
fi

case "$SERVICE" in
    vm)
        az vm list --output table
        ;;
    storage)
        az storage account list --output table
        ;;
    db)
        echo "--- Azure SQL Servers ---"
        az sql server list --output table
        echo "--- Azure MySQL Servers ---"
        az mysql server list --output table
        echo "--- Azure PostgreSQL Servers ---"
        az postgres server list --output table
        ;;
    cosmos)
        az cosmosdb list --output table
        ;;
    function)
        az functionapp list --output table
        ;;
    disk)
        az disk list --output table
        ;;
    lb)
        echo "--- Load Balancers ---"
        az network lb list --output table
        echo "--- Application Gateways ---"
        az network application-gateway list --output table
        ;;
    cdn)
        echo "--- CDN Profiles ---"
        az cdn profile list --output table
        echo "--- Azure Front Door ---"
        az network front-door list --output table
        ;;
    monitor)
        echo "--- Log Analytics Workspaces ---"
        az monitor log-analytics workspace list --output table
        ;;
    event)
        echo "--- Event Grid Topics ---"
        az eventgrid topic list --output table
        echo "--- Notification Hubs ---"
        az notification-hub namespace list --output table
        ;;
    queue)
        echo "--- Service Bus Namespaces ---"
        az servicebus namespace list --output table
        echo "--- Storage Queues (Requires Storage Account) ---"
        echo "Note: Listing queues requires storage account context"
        ;;
    dns)
        az network dns zone list --output table
        ;;
    network)
        az network vnet list --output table
        ;;
    ad)
        az ad user list --output table
        ;;
    rg)
        az group list --output table
        ;;
    *)
        echo "Unsupported service: $SERVICE"
        echo "Supported services: vm, storage, db, cosmos, function, disk, lb, cdn, monitor, event, queue, dns, network, ad"
        exit 1
        ;;
esac
