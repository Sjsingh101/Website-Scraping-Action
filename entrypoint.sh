#!/bin/bash

echo Hello bitch
echo see my name ${GITHUB_USER}
apt-get update
echo ${{ github.repository }}
echo ${{ secrets.URL }}
#apt install wget -y
#wget -r ${{ github.repository }}
#apt-get install iputils-ping -y
#ping 8.8.8.8
