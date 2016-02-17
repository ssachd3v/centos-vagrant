# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

#Version Variables
JAVA_VERSION = "java-1.8.0-openjdk-1.8.0.71"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  #config.vm.box = "centos7"
  config.vm.box = "geerlingguy/centos7"
  #config.vm.box = "puppetlabs/centos-7.0-64-puppet"
  #config.vm.box_url = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box"
  #config.vm.box_url = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.name = 'nebraskavm'
  end

  config.vm.network :private_network, id: "primary", ip: "10.10.10.10"
  
  # Share an additional folders to the guest VM.
  #config.vm.synced_folder 'etc-puppet', '/etc/puppet'

  #mysql port
  config.vm.network :forwarded_port, guest: 3306, host: 3307

  #redis port
  config.vm.network :forwarded_port, guest: 6379, host: 6380

  #activemq port
  config.vm.network :forwarded_port, guest: 8161, host: 8162

  #web port
  config.vm.network :forwarded_port, guest: 80, host: 8090
  
  
  #Install Java
  config.vm.provision "shell", inline: "yum install -y java-1.8.0-openjdk-1.8.0.71"
  
  config.vm.provision "shell", path: "./scripts/provision-mysql.sh"
  config.vm.provision "shell", path: "./scripts/provision-redis.sh"
  config.vm.provision "shell", path: "./scripts/provision-activemq.sh"
  
end