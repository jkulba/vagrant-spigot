#!/usr/bin/env bash

echo "Fetching Spigot Server..."

cd /home/vagrant
mkdir minecraft
cd minecraft
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
sudo java -jar BuildTools.jar --rev 1.12.2
