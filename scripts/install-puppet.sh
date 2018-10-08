#!/bin/bash
wget https://apt.puppetlabs.com/puppet5-release-stretch.deb
sudo dpkg -i puppet5-release-stretch.deb
sudo apt-get update
sudo apt-get install puppet-agent
