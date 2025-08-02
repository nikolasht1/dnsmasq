#!/bin/bash

sed -i 's/#DNSStubListener=yes/DNSStubListener=no/' /etc/systemd/resolved.conf
mv /etc/resolv.conf /etc/resolv.conf.old
cd /etc
sed -i 's/nameserver 10\.0\.2\.3/nameserver 10.0.0.13/' /run/systemd/resolve/resolv.conf
ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
systemctl restart systemd-resolved
apt install dnsmasq -y
ss -lntu
