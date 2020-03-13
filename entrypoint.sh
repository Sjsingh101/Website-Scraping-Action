#!/bin/bash

echo Hello bitch
apt-get update
apt install wget curl git -y
wget -r $URL
cd $URL
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
git init
git add --all
git status
git config user.email "$EMAIL"
git config user.name "$USER"
git commit -m "end"
git commit -m "Final HIt"
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force


