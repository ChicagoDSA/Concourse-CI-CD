#!/usr/bin/env bash

set -e -u -x

{
    rsa=${RSA_KEY}
    ssh-keygen -t rsa -N "" -f rsa.key
    echo "$rsa" > ./rsa.key
    mkdir /root/.ssh
    cp ./rsa.key ~/.ssh/id_rsa
    rm rsa.key
    rm rsa.key.pub
} &> /dev/null

cd prod-ed-for-bernie
rm -rf .git
sftp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -r srao_edforbernie@ssh.phx.nearlyfreespeech.net <<EOF
   put -r .
EOF

rm ~/.ssh/id_rsa