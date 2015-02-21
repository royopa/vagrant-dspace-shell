#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git openjdk-7-jdk maven ant ant-optional tomcat7 postgresql tomcat7-admin

sudo rm -rf dspace-auto-install
sudo rm -rf /dspace

git clone -b dspace-4.2 https://github.com/royopa/dspace-auto-install.git dspace-auto-install
cd dspace-auto-install
./build-dspace
