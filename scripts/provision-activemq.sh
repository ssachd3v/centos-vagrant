#!/bin/bash

PROVISION_LOG=/var/log/provision.log

echo -e "\n--- Setting up ActiveMQ instance ---\n"

echo -e "\n--- Downloading ActiveMQ (this may take a few minutes based on your network connection) ......... ---\n"
wget -q http://archive.apache.org/dist/activemq/apache-activemq/5.8.0/apache-activemq-5.8.0-bin.tar.gz >> $PROVISION_LOG

tar xvzf apache-activemq-5.8.0-bin.tar.gz >> $PROVISION_LOG
mv apache-activemq-5.8.0 /opt/ >> $PROVISION_LOG
ln -sf /opt/apache-activemq-5.8.0/bin/activemq /usr/bin/activemq >> $PROVISION_LOG
activemq start >> $PROVISION_LOG
echo -e "\n--- ActiveMQ setup complete ---\n"