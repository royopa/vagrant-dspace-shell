#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-get install -y git openjdk-7-jdk 

sudo add-apt-repository "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main"
sudo apt-get update
sudo apt-get install -y maven3

sudo rm -rf dspace-auto-install

git clone -b dspace-5.x https://github.com/royopa/dspace-auto-install.git
cd dspace-auto-install
#./build-dspace
