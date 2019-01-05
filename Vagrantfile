# -*- mode: ruby -*-
# vi: set ft=ruby :

home_folder = Dir.home()

Vagrant.configure("2") do |config|
  config.vm.define "rm" do |rm|
    # base image
    rm.vm.box = "envimation/ubuntu-xenial"
    rm.vm.box_version = "1.0.3-1516241473"
    rm.vm.box_check_update = false

    # virtual hardware definition
    rm.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end

    # network
    rm.vm.hostname = "router-machine"
    rm.vm.network "public_network", ip: "192.168.137.127", :netmask => "255.255.255.0"#, :bridge => '<physical host interface>'

    # sync folder
    rm.vm.synced_folder "#{home_folder}", "/vagrant_data", create: true, owner: "root", group: "root"

    # router setup
    rm.vm.provision "shell", inline: "echo 'Router machine based on ubuntu-xenial vagrant box' > /etc/motd"
    rm.vm.provision "file", source: "conf/", destination: "/home/vagrant/conf"
    rm.vm.provision "shell" do |s|
      s.path = "provision.sh"
    end
  end
end
