#!/bin/bash

echo Hello bitch
#echo see my name $GITHUB_USER
apt-get update
apt install wget -y
wget -r $URL
#apt-get install iputils-ping -y
#ping 8.8.8.8
