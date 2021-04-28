#!/bin/bash

az group create --name MinecraftRG$RANDOM --location westeurope

az vm create --resource-group MinecraftRG$RANDOM --name MinecraftVM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
