#!/bin/bash
echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted' > /etc/apt/sources.list.d/ubuntu.list
sudo apt-get update
sudo apt-get -d -y --force-yes install libapr1=1.5.0-1
cp /var/cache/apt/archives/libapr1_1.5.0-1_amd64.deb ~/