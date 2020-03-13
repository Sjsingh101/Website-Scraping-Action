#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
wget -r $URL
cd $URL
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
git init
git add .
git add --all
git status
git commit -m "Initial Commit for website"
git commit -m "end"
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force


