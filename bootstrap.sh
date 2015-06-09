#!/usr/bin/env bash
sudo apt-get install -y --force-yes git

sudo rm -rf dspace-auto-install

git clone -b master https://github.com/royopa/dspace-auto-install.git
sudo chown vagrant dspace-auto-install
cd dspace-auto-install
./build-dspace
