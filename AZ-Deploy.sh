#!/bin/bash

az group create --name Minecraft --location westeurope

az vm create --resource-group Minecraft --name MinecraftVM$RANDOM*$RANDOM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
