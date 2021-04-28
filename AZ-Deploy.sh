#!/bin/bash

let randomNum=$RANDOM*$RANDOM

# Generate a unique service and group name with the suffix
ServiceName=Minecraft$randomNum
#resource name must be lowercase
mySignalRSvcName=${ServiceName,,}
myResourceGroupName=Minecraft"RG$randomNum"
myVM=Minecraft"VM$randomNum"

az group create --name $myResourceGroupName --location westeurope

az vm create --resource-group $myResourceGroupName --name $myVM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
