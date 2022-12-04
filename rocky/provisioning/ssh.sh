#!/usr/bin/env bash

if [ ! -d /home/devel/.ssh ]; then
    mkdir -p /home/devel/.ssh
    chown devel.devel /home/devel/.ssh
    chmod 600 /home/devel/.ssh
fi

mv /tmp/id_rsa /home/devel/.ssh
chown devel.devel /home/devel/.ssh/id_rsa
chmod 600 /home/devel/.ssh/id_rsa
