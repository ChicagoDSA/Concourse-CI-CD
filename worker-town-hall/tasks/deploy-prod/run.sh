#!/usr/bin/env bash

set -e -u -x
cd prod-worker-town-hall

{
    rsa=${RSA_KEY}

    ssh-keygen -t rsa -N "" -f rsa.key
    echo "$rsa" > ./rsa.key
    mkdir /root/.ssh
    cp ./rsa.key ~/.ssh/id_rsa
    rm rsa.key
    rm rsa.key.pub
} &> /dev/null

rm -rf .git
sftp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -r srao_workertownhall@ssh.phx.nearlyfreespeech.net <<EOF
   put -r .
EOF

rm ~/.ssh/id_rsa