#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git

sudo rm -rf dspace-auto-install
sudo rm -rf /dspace

git clone -b dspace-5.x https://github.com/royopa/dspace-auto-install.git
cd dspace-auto-install
./build-dspace
