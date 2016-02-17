# Centos7 Vagrant VM 

## To set up your workstation, you'll need:

1. [Install Vagrant](https://www.vagrantup.com/downloads.html) (which will also install VirtualBox)
2. Run `vagrant up` on the root of this project

## Vagrant will then spin up a VM with:

1. ActiveMQ
2. Redis
3. MySql
4. Java 8

Under ./scripts you will find various provisioning scripts which are used for setup

### Other Information

You can access various components from you host machine:

1. ActiveMQ: http://localhost:8162
2. Redis: redis-cli -h localhost -p 6380
3. MySQL: Host: localhost, Port: 3307, DB: nebraska

