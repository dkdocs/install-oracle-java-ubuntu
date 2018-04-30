#!/usr/bin/env bash

sudo apt-get purge icedtea-* openjdk-*
sudo apt autoremove


for i in {1..5}; do sudo apt-get update && break || sleep 10; done
sudo apt-get install -y software-properties-common debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
for i in {1..5}; do sudo apt-get update && break || sleep 10; done
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer