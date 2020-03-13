#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
wget -r $URL
echo try to change path
cd $URL
pwd
rm -r .git
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
ls -la
cd $URL
echo new path of website
pwd
git init
git add .
git status
git commit -m "Final HIt"
git status
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force


