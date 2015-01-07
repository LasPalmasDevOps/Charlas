# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"
  

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope       = :box
  end

  config.vm.define "web" do |web|
	web.vm.network "private_network", ip: "192.168.33.10"
	web.vm.synced_folder "code", "/var/www/"
	web.vm.provision "shell", inline: "apt-get install apache2 -y"
  end

  config.vm.define "db" do |db|
	db.vm.network "private_network", ip: "192.168.33.11"
	db.vm.provision "shell", inline: "apt-get update && apt-get install mysql-server -y"
  end

end
