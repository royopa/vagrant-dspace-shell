#!/usr/bin/env bash

apt-get update
apt-get install -y language-pack-en software-properties-common python-software-properties wget git unzip linux-headers-generic build-essential dkms

wget https://github.com/royopa/dspace-auto-install/archive/dspace-4.2.zip
unzip dspace-4.2.zip 

cd dspace-auto-install-dspace-4.2
./build-dspace
