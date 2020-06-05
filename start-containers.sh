#!/bin/bash

if [ -d "/root/scheduled-serverless-startup" ] 
then
    git pull origin master
else
    cd /root/scheduled-serverless-startup
     git clone https://github.com/jonwhittlestone/scheduled-serverless-startup.git /root/scheduled-serverless-startup
fi
cd /root/scheduled-serverless-startup/app
docker-compose up -d