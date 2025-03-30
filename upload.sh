#!/bin/bash
#
sudo mkdir /var/log/temp
sudo cp /var/log/app.log /var/log/temp
sudo gzip -k /var/log/temp/app.log
aws s3 cp /var/log/temp/app.log.gz s3://cactro-909/$(date +"%Y-%m-%d")/app.log.gz
sudo rm -rf /var/log/temp
