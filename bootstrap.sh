#!/usr/bin/env bash

apt-get update
apt-get install -y language-pack-en software-properties-common python-software-properties wget git unzip linux-headers-generic build-essential dkms

https://github.com/royopa/dspace-auto-install/archive/dspace-5.x.zip
unzip master.zip

cd dspace-auto-install-master
./build-dspace