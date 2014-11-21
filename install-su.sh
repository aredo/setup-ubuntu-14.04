#!/bin/bash

apt-get update
apt-get -y dist-upgrade

# install useful software
apt-get install -y curl g++ git-core htop imagemagick iptables-persistent libcurl3 libcurl3-dev make pure-ftpd python-software-properties ssh libfontconfig

# configure ip tables for port redirect from 3000 to 80
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000

# configure ip tables for port redirect from 3001 to 443
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT --to-port 3001

# save the port redirect configuration
iptables-save > /etc/iptables/rules.v4

apt-get -y autoclean
apt-get -y autoremove

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

apt-get update

echo 'install mongodb .......'

apt-get install mongodb-org

add-apt-repository ppa:nginx/stable

apt-get update

apt-get install nginx

echo 'check nginx if the server is up and running'

ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

apt-add-repository ppa:chris-lea/redis-server

apt-get update

echo 'install redis .......'

apt-get install redis-server


echo 'to continue the installation run install-nosu.sh'
echo 'use: ./install-nosu.sh'

exit

./install-nosu.sh
