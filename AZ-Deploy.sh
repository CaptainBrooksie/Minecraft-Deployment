#!/bin/bash

az group create --name MinecraftRG --location westeurope

az storage account create --name MinecraftSA --resource-group MinecraftRG --location westeurope --sku Standard_LRS

az vm create --resource-group MinecraftRG --name MinecraftVM --image win2019datacenter --admin-username azureuser --location westeurope --size Standard_B1s --public-ip-address --public-ip-address-allocation dynamic --public-ip-address-dns-name
