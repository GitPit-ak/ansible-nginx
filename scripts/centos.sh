#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo yum install unzip -y
sudo systemctl start httpd
sudo systemctl enable httpd
status=$(sudo systemctl is-active httpd)

if [ "$status" == "active" ]; then
    echo "httpd is Ready to serve"
fi

echo "Deploying website............"

echo << EOF 
=======================
Deploying website............
==========
EOF


wget -P /tmp/ https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip 
sudo unzip -o /tmp/templatemo_520_highway.zip -d /tmp/
sudo rm -rf /var/www/html/*
sudo cp -r /tmp/templatemo_520_highway/* /var/www/html/

echo $( ip address | grep inet)