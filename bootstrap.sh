#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git

sudo rm -rf dspace-auto-install
sudo rm -rf /dspace

git clone -b dspace-4.2 https://github.com/royopa/dspace-auto-install.git dspace-auto-install
cd dspace-auto-install
./build-dspace
