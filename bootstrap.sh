#! /bin/bash

yum update -y
yum install unzip awscli cronie git -y
touch /var/log/app.log
echo -e "*/2 * * * * ~/cactro-909/upload.sh" | crontab -u root -
systemctl enable crond
git clone https://github.com/debarkamondal/cactro-909 ~/cactro-909
