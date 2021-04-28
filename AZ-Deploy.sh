#!/bin/bash

# Generate a unique suffix for the service name
let randomNum=$RANDOM*$RANDOM

# Generate a unique service and group name with the suffix
SignalRName=Minecraft$randomNum
#resource name must be lowercase
mySignalRSvcName=${SignalRName,,}
myResourceGroupName=SignalRName"Group"
myVM=$SignalRName"VM"

az group create --name $myResourceGroupName --location westeurope

az vm create --resource-group $myResourceGroupName --name $myVM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
