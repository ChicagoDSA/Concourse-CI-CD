#!/usr/bin/env bash

set -e -u -x

{
    rsa=${RSA_KEY}

    cd prod-member-handbook
    ssh-keygen -t rsa -N "" -f rsa.key
    echo "$rsa" > ./rsa.key
    mkdir /root/.ssh
    cp ./rsa.key ~/.ssh/id_rsa
    rm rsa.key
    rm rsa.key.pub
} &> /dev/null

rm -rf .git
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -rp ../prod-member-handbook/ root@45.55.40.82:/var/www/html

rm ~/.ssh/id_rsa