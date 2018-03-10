#!/usr/bin/env bash

# Download and instll Oracle Java SDK
cd /opt

echo "Fetching Oracle Java SDK..."
sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz

sudo tar -zxvf jdk-8u161-linux-x64.tar.gz

sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_161/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_161/bin/javac 1

sudo update-alternatives --config java
sudo update-alternatives --config javac

rm -f jdk-8u161-linux-x64.tar.gz
