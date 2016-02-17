#!/bin/bash

PROVISION_LOG=/var/log/provision.log

echo -e "\n--- Setting up Redis instance ---\n"
yum install redis -y
systemctl start redis.service

#Add bind port for redis to make it available to the host machine
