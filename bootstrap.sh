#!/usr/bin/env bash

sudo locale-gen en_US en_US.UTF-8 pt_BR.UTF-8
sudo dpkg-reconfigure locales

sudo apt-get update
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-get install -y git wget unzip mc openjdk-7-jdk

sudo add-apt-repository "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main"
sudo apt-get update
sudo apt-get install -y maven3

sudo rm -rf dspace-auto-install

git clone -b master https://github.com/royopa/dspace-auto-install.git
sudo chown vagrant dspace-auto-install
cd dspace-auto-install
./build-dspace
