# Introduction

Portable router-machine, alternate Router Toolkit for Windows Internet Sharing (Non-Linux NAT) etc., can be easily managed through vagrant.

Based on [ubuntu-xenial](https://app.vagrantup.com/envimation/boxes/ubuntu-xenial)

To specify a bridged network adapter for LAN, bypass manual selection, uncomment ':bridge' and fill in the blank named 'physical host interface'.

## How to obtain the list of available network interfaces

Linux: `ifconfig -a`

Windows+VirtualBox: `VBoxManage.exe list bridgedifs | grep "^Name:.*"`

Zhan.Shi @ 2018
