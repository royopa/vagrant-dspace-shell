#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y wget git unzip openjdk-7-jdk ant ant-optional tomcat7 postgresql tomcat7-admin

sudo add-apt-repository "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main"
sudo apt-get update
sudo apt-get install -y maven3

git clone -b dspace-5.x https://github.com/royopa/dspace-auto-install.git
cd dspace-auto-install
./build-dspace
