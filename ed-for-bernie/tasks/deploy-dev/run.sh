#!/usr/bin/env bash

set -e -u -x

#{
#    rsa=${RSA_KEY}
#    ssh-keygen -t rsa -N "" -f rsa.key
#    echo "$rsa" > ./rsa.key
#    mkdir /root/.ssh
#    cp ./rsa.key ~/.ssh/id_rsa
#    rm rsa.key
#    rm rsa.key.pub
#} &> /dev/null

cd dev-ed-for-bernie
npm install
npm build

ls /var/

docker ps

cp -rf build/ /var/www/ed-for-bernie