#!/bin/bash
set -e
set -x
if [ -z $GOPASSWD ];then echo "please export GOPASSWD=\"your password\""; exit ;fi
openssl enc -aes-256-cbc -d -in index.enc -out index.md  -pbkdf2 -pass env:GOPASSWD
