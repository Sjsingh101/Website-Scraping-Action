#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
wget -r $URL
cd $URL
git init
git add --all
git commit -m "Final"
git branch -a
git status
git push -u https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force
