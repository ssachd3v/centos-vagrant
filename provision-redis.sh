#!/bin/bash

PROVISION_LOG=/var/log/provision.log

echo -e "\n--- Setting up our Redis instance ---\n"
yum install redis -y
systemctl start redis.service