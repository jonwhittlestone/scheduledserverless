#!/bin/bash
# clone repo, start containers
git clone https://github.com/jonwhittlestone/scheduled-serverless-startup.git /root/scheduled-serverless-startup
cd /root/scheduled-serverless-startup/app
docker-compose up -d