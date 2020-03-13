#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
wget -r $URL
cd $URL
git init
git add .
git commit -m 'Final'
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force
