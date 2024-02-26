#!/bin/sh

echo "Switching to branch bg"
git checkout main

echo "Building app"
yarn build

echo "Deploying files to server"
rsync -avP dist/ root@172.104.206.203:/var/www/html
echo "Deployment complete"
