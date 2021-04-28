#!/bin/bash

az group create --name MinecraftRG --location westeurope

az vm create --resource-group MinecraftRG --name MinecraftVM --image win2016datacenter --admin-username azureuser --location westeurope --size Standard_B1s
