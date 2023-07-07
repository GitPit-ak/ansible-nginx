#!/bin/bash
sudo apt update
sudo apt-get install nginx -y
status=$(sudo systemctl is-active nginx)

if [ "$status" == "active" ]; then
    echo "nginx is Ready to serve"
fi

sudo rm -rf /etc/nginx/sites-enabled/*

sudo tee -a /etc/nginx/conf.d/load.conf >/dev/null <<EOF
upstream backend {
        server 192.168.1.56;
        server 192.168.1.57;
    }
    
    server {
        location / {
            proxy_pass http://backend;
    }
}
EOF

if sudo nginx -t >/dev/null 2>&1; then
    sudo systemctl reload nginx
    echo " nginx is up.."
fi
