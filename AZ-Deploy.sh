#!/bin/bash

az group create --name MinecraftRG --location westeurope

az vm create --resource-group Minecraft --name MinecraftVM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
