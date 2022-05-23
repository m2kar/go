#!/bin/bash
set -e
set -x
if [ -z $GOPASSWD ];then echo "please export GOPASSWD=\"your password\""; exit ;fi
./node_modules/markdown-to-html/bin/github-markdown index.md > index.plain.html 
node ./node_modules/staticrypt/index.js index.plain.html ${GOPASSWD} -o index.html 
openssl enc -aes-256-cbc -in index.md -out index.enc -salt -pbkdf2 -pass env:GOPASSWD
git add index.enc index.html && git commit -m "edit index.html" && git push
