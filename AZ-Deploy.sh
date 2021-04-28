#!/bin/bash

# Generate a unique suffix for the service name
let randomNum=$RANDOM

# Generate a unique service and group name with the suffix
ServiceName=Minecraft$randomNum

#resources name must be lowercase
myResourceGroupName=$ServiceName"Group"
myStorageAccountName=$ServiceName"Storage"
myVMName=$ServiceName"VM"

# Create a resource group.
az group create --name $myResourceGroupName --location westeurope

# Create a general-purpose storage account in your resource group.
az storage account create \
    --resource-group $myResourceGroupName \
    --name $myStorageAccountName \
    --location westeurope \
    --sku Standard_LRS

# Create Windowd Virtual Machine

az vm create \
    --resource-group $myResourceGroup \
    --name $myVMName \
    --image win2019datacenter \
    --admin-username azureuser \
    --location westeurope \
    --size B1s
