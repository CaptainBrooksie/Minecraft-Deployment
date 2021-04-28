#!/bin/bash

az group create --name MinecraftRG --location westeurope

az vm create --resource-group MinecraftRG --name MinecraftVM --size Standard_B1s --image win2016datacenter --admin-username azureuser --location westeurope
