#!/bin/bash

sudo apt-get update

systemctl status nginx | grep -E "*running"

if [ $? -eq 0 ]; then
        echo "NGINX sudah terinstall"
else
        echo "NGINX belum terinstall"
        sudo apt-get install -y nginx
fi      

systemctl status mysql | grep -E "*running"

if [ $? -eq 0 ]; then
        echo "MYSQL sudah terinstall"
else
        echo "MYSQL belum terinstall"
        sudo apt-get install -y mysql-server
fi
