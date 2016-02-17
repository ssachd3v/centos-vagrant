#!/bin/bash

PROVISION_LOG=/var/log/provision.log

# Variables
DBNAME=nebraska
DBUSER=root

echo "Provisioning virtual machine..."
echo "Logging output to: $PROVISION_LOG"

yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm >> $PROVISION_LOG
yum install -y mysql-server >> $PROVISION_LOG
systemctl start mysqld >> $PROVISION_LOG

echo -e "\n--- Setting up our MySQL user and db ---\n"
mysql -uroot -e "CREATE DATABASE $DBNAME"
mysql -uroot -e "create user '$DBUSER'@'%'"
mysql -uroot -e "grant all privileges on *.* to '$DBUSER'@'%' with grant option"
mysql -uroot -e "flush privileges"


# sudo yum install -y epel-release
# sudo yum install -y nginx
# systemctl start nginx

#curl http://localhost:80