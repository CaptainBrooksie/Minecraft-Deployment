#!/bin/bash

myResourceGroupName=MinecraftRG$RANDOM

az group create --name myResourceGroupName --location westeurope

az vm create --resource-group myResourceGroupName --name MinecraftVM$RANDOM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
