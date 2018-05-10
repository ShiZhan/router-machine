# Introduction

Homebrew router-machine, alternative Router Toolkit for Windows Internet Sharing (NAT).

Based on [ubuntu-xenial-docker](https://app.vagrantup.com/envimation/boxes/ubuntu-xenial-docker)

Use ssh-keygen to prepare or refresh insecure key pair before launch.

To specify a bridged network adapter for LAN hosts, uncomment ':bridge' and fill in the blank named 'physical host interface'.

## How to obtain the list of available network interfaces

Linux: `ifconfig -a`

Windows+VirtualBox: `VBoxManage.exe list bridgedifs | grep "^Name:.*"`

Zhan.Shi @ 2018
