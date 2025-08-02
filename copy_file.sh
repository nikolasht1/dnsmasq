#!/bin/bash
cp /vagrant/install_dnsmasq.sh /home/vagrant/
chmod +x /home/vagrant/install_dnsmasq.sh

crontab -l > /tmp/mycron
echo "@reboot cd /home/vagrant/ && ./install_dnsmasq.sh" >> /tmp/mycron
crontab /tmp/mycron

systemctl enable cron.service
systemctl start cron.service

systemctl enable cron
systemctl start cron
systemctl status cron
