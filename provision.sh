#!/bin/bash
mv /etc/apt/sources.list /etc/apt/sources.list.bak
cp /home/vagrant/conf/sources.list /etc/apt/sources.list
apt-get update && apt-get install -y iptables dnsmasq

source /home/vagrant/conf/update-iptables.sh
cp /home/vagrant/conf/update-iptables.sh /etc/network/if-up.d/update-iptables.sh
chmod +x /etc/network/if-up.d/update-iptables.sh

cp /home/vagrant/conf/hosts-local /etc/hosts-local
mv /etc/dnsmasq.conf /etc/dnsmasq.conf.bak
cp /home/vagrant/conf/dnsmasq.conf /etc/dnsmasq.conf
service dnsmasq restart
