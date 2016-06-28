#!/bin/bash
echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty main restricted' > /etc/apt/sources.list.d/ubuntu.list

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E56151BF
DISTRO=ubuntu
CODENAME=trusty
echo "deb http://repos.mesosphere.com/${DISTRO} ${CODENAME} main" | sudo tee /etc/apt/sources.list.d/mesosphere.list
echo "deb https://apt.dockerproject.org/repo ${DISTRO}-${CODENAME} main" | sudo tee /etc/apt/sources.list.d/mesosphere.list

sudo apt-get update

sudo apt-get -y -d --force-yes install docker-engine
sudo apt-get -y -d --force-yes install mesos=0.28.2-2.0.27.ubuntu1404 marathon=1.1.1-1.0.472.ubuntu1404


cp /var/cache/apt/archives/libapr1_1.5.0-1_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libaprutil1_1.5.3-1_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libck-connector0_0.4.5-3.1ubuntu2_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libjline-java_1.0-2_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/liblog4j1.2-java_1.2.17-4ubuntu3_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libnetty-java_1%3a3.2.6.Final-2_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libserf-1-1_1.3.3-1ubuntu0.1_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libservlet2.5-java_6.0.39-1_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libslf4j-java_1.7.5-2_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libsvn1_1.8.8-1ubuntu3.2_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libxerces2-java_2.11.0-7_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libxml-commons-external-java_1.4.01-2build1_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libxml-commons-resolver1.1-java_1.2-7build1_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/libzookeeper-java_3.4.5+dfsg-1_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/marathon_1.1.1-1.0.472.ubuntu1404_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/mesos_0.28.2-2.0.27.ubuntu1404_amd64.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/zookeeper_3.4.5+dfsg-1_all.deb $WORKSPACE/processer/bundle
cp /var/cache/apt/archives/zookeeperd_3.4.5+dfsg-1_all.deb $WORKSPACE/processer/bundle



