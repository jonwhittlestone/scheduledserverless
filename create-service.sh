#!/bin/bash
touch /tmp/todo-create-service.txt

# [Unit]
# Description=HowappedProjectStartOnBoot
# After=network.target

# [Service]
# Type=simple
# User=jon
# WorkingDirectory=/root/scheduled-serverless-startup
# ExecStart=sh howapped-project-clone-start-containers.sh
# Restart=on-abort

# [Install]
# WantedBy=multi-user.target