# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
#  config.vm.box = "geerlingguy/centos7"
  config.vm.box = "centos/7"
#  config.vm.box = "landregistry/centos"

  config.vm.define "py" do |py|
#          py.vm.network "public_network", ip: "192.168.50.20", bridge: "eth0"
	  py.vm.hostname = "py-CentOS7.og.com"
	#Admin ports
	#Test port
	py.vm.network "forwarded_port", guest: 5000, host: 5000
	  
	  py.vm.provision "shell",
            path: "py.provision.sh"
  end

end
