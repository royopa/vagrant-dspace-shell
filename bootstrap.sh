#!/usr/bin/env bash

apt-get update
apt-get install -y wget git unzip

wget https://github.com/royopa/dspace-auto-install/archive/dspace-4.2.zip
unzip dspace-4.2.zip 

cd dspace-auto-install-dspace-4.2
./build-dspace
