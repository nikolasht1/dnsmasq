#!/bin/bash

sudo sed -i 's/#DNSStubListener=yes/DNSStubListener=no/' /etc/systemd/resolved.conf
sudo mv /etc/resolv.conf /etc/resolv.conf.old
cd /etc/
sudo sed -s 's/nameserver 10.0.2.3/nameserver 10.0.0.13/' /run/systemd/resolve/resolv.conf
sudo ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
sudo systemctl restart systemd-resolved
sudo apt install dnsmasq -y
