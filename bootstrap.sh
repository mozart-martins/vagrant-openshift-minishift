#!/bin/bash

echo '[TASK 1] Install dependencies'
sudo apt-get update >/dev/null
sudo apt-get install -y curl virtualbox >/dev/null

echo '[TASK 2] Download and install Minishift'
curl -Lo minishift.tgz https://github.com/minishift/minishift/releases/download/v1.34.1/minishift-1.34.1-linux-amd64.tgz  >/dev/null 2>&1
tar -xzf minishift.tgz
sudo mv minishift-1.34.1-linux-amd64/minishift /usr/local/bin

echo '[TASK 3] Clean up downloaded files'
rm -rf minishift.tgz minishift-1.34.1-linux-amd64

echo '[TASK 4] Start minishift'
# minishift start --vm-driver virtualbox --host-only-ip=192.168.99.100  >/dev/null
# minishift start --vm-driver virtualbox --ip 192.168.99.1 --netmask 255.255.255.0 --hostonly-cidr 192.168.99.1/24
minishift start --vm-driver virtualbox --host-only-cidr "192.168.56.11/24" >/dev/null
