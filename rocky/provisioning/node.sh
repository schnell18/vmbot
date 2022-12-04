#!/usr/bin/env bash

# install nodejs
rpm -Uhv /tmp/nodejs*.rpm
rm -f /tmp/nodejs*.rpm

# use taobao mirror to install bower
npm config set registry=http://registry.npm.taobao.org
npm install -g bower
