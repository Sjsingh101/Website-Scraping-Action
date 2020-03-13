#!/bin/bash
echo 'Website Scrapping Started At : `date`'
apt-get update
apt install wget curl git -y
curl -H "Authorization: token $OAUTH_TOKEN" https://api.github.com/user/repos -d '{"name":"Website","private":false}'
wget -r $URL
cd $URL
rm -r .git
git init
git add .
git status
git commit -m "Scrapped Website Uploaded"
git status
git push https://$OAUTH_TOKEN:x-oauth-basic@github.com/$USER/Website.git master --force

