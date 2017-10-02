#!/bin/bash

echo "########################################"
echo "      Converting yaml to shin"
echo "########################################"
../widdershins/widdershins.js -y swagger.yaml -o source/index.html.md
echo "########################################"
echo "      Building index.html"
echo "########################################"
node shins.js
echo "########################################"
echo "      Git Commit"
echo "########################################"
git commit -a -m "`date`"
echo "########################################"
echo "       Pushing to master"
echo "########################################"
git push origin master