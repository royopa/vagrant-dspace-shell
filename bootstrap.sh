#!/usr/bin/env bash

apt-get update
apt-get install -y wget git unzip

wget https://github.com/royopa/dspace-auto-install/archive/master.zip
unzip master.zip

cd dspace-auto-install-master
./build-dspace