#!/bin/bash
sudo apt update
sudo apt-get install apache2 -y
sudo apt-get install unzip -y
status=$(sudo systemctl is-active apache2)

if [ "$status" == "active" ]; then
    echo "apache2 is Ready to serve"
fi

echo "Deploying website"

wget -P /tmp/ https://www.tooplate.com/zip-templates/2124_vertex.zip 
sudo unzip -o /tmp/2124_vertex.zip -d /tmp/
sudo rm -rf /var/www/html/*
sudo cp -r /tmp/2124_vertex/* /var/www/html/

echo $( ip address | grep inet)