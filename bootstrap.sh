#!/usr/bin/env bash

apt-get install -y wget git unzip

sudo rm -rf dspace-4.2*.zip
sudo rm -rf dspace-auto-install*
sudo rm -rf /dspace

wget https://github.com/royopa/dspace-auto-install/archive/dspace-4.2.zip
unzip dspace-4.2.zip 

cd dspace-auto-install-dspace-4.2
./build-dspace
