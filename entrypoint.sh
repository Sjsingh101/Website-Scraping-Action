#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
wget -r $URL
cd $URL
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
git init
git add .
git status
git commit -m "Initial Commit"
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master
#git remote add test https://github.com/$USER/Website.git
#git config user.email "$EMAIL"
#git config user.name "$USER"
#git push test master

