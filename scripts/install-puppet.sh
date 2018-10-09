#!/bin/bash
echo 'Installing puppet agent'
wget https://apt.puppetlabs.com/puppet5-release-stretch.deb
sudo dpkg -i puppet5-release-stretch.deb
sudo apt-get update
sudo apt-get install puppet-agent

echo 'Disabling puppet agent/mcollective services'
sudo systemctl stop puppet
sudo systemctl stop mcollective.service
sudo systemctl disable puppet
sudo systemctl disable mcollective.service

