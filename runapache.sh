#!/bin/bash

apt-get update
apt-get install -y apache2
cp -R . /var/www/html
sed -i 's/80/8080/g' /etc/apache2/ports.conf
service apache2 restart
