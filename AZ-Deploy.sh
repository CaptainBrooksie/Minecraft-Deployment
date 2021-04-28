#!/bin/bash

myRG=MinecraftRG$RANDOM

az group create --name $myRG --location westeurope

az vm create --resource-group myRG$ --name MinecraftVM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
