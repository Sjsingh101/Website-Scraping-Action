#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
wget -r $URL
cd $URL
rm -r .git
git init
git config --global user.email "sjsingh9090@gmail.com"
git config --global user.name "$USER"
git add .
git status
git commit -m "Final It"
git status
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force
