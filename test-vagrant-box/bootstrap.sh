#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
#apt-get install curl
#apt-get install git
# FOR SOME REASON, THE HASHICORP / PRECISE32 DOESN'T LIKE PULLING GIT AND CURL
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi  
