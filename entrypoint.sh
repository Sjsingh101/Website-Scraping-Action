#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
wget -r $URL
cd $URL
curl -H "Authorization: $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
git init
git add .
git commit -m "Initial Commit"
git remote add test https://github.com/$USER/Website.git
git config user.email "$EMAIL"
git config user.name "$USER"
git push test master
