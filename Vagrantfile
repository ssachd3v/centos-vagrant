# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  #config.vm.box = "centos7"
  config.vm.box = "geerlingguy/centos7"
  #config.vm.box = "puppetlabs/centos-7.0-64-puppet"
  #config.vm.box_url = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box"
  #config.vm.box_url = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box"

  # config.vm.provider :virtualbox do |v|
  #     # On VirtualBox, we don't have guest additions or a functional vboxsf
  #     # in CoreOS, so tell Vagrant that so it can be smarter.
  #     v.check_guest_additions = false
  # end

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.name = 'nebraskadev01'
  end

  config.vm.network :private_network, id: "primary", ip: "192.168.33.22"
  
  # Share an additional folders to the guest VM.
  #config.vm.synced_folder 'etc-puppet', '/etc/puppet'

  #mysql port
  config.vm.network :forwarded_port, guest: 3306, host: 3307

  #redis port
  config.vm.network :forwarded_port, guest: 6379, host: 6380


  config.vm.network :forwarded_port, guest: 80, host: 8090
  
  # config.vm.provision "shell" do |s|
  #   s.path "provision-mysql.sh"
  # end

  config.vm.provision "shell", path: "provision-mysql.sh"
  config.vm.provision "shell", path: "provision-redis.sh"
  
end