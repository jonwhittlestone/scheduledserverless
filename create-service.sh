#!/bin/bash
touch /etc/systemd/system/howapped.service
cat > /etc/systemd/system/howapped.service<<-EOF
    [Unit]
    Description=HowappedProjectStartOnBoot
    After=network.target

    [Service]
    Type=simple
    User=root
    WorkingDirectory=/root/scheduled-serverless-startup
    ExecStart=/bin/sh /root/scheduled-serverless-startup/start-containers.sh
    Restart=on-abort

    [Install]
    WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart howapped.service
