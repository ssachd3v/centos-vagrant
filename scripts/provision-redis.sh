#!/bin/bash

PROVISION_LOG=/var/log/provision.log

echo -e "\n--- Setting up Redis instance ---\n"
yum install redis -y

#Add bind port for redis to make it available to the host machine
cp /etc/redis.conf /etc/redis.conf.bak
sudo sed -i 's/bind 127.0.0.1/bind 0.0.0.0/' /etc/redis.conf

systemctl start redis.service
