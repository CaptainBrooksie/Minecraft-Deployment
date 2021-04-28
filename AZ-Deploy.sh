#!/bin/bash

myResourceGroupName=Minecraft
myVM=MinecraftVM$RANDOM

az group create --name $myResourceGroupName --location westeurope

az vm create --resource-group $myResourceGroupName --name $myVM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
