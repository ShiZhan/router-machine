#!/bin/bash
echo 1 > /proc/sys/net/ipv4/ip_forward
/sbin/iptables --policy INPUT   ACCEPT
/sbin/iptables --policy OUTPUT  ACCEPT
/sbin/iptables --policy FORWARD ACCEPT
/sbin/iptables -Z && /sbin/iptables -F && /sbin/iptables -X
/sbin/iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
/sbin/iptables --append FORWARD --in-interface eth1 -j ACCEPT
