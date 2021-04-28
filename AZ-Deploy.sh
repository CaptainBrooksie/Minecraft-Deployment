#!/bin/bash


az vm create --resource-group MinecraftRG --name MinecraftVM$RANDOM --size Standard_B1s --image win2016datacenter --location westeurope --admin-username azureuser
