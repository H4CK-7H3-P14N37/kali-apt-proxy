#!/bin/bash

echo "Installing Nginx..."
apt install -y nginx

echo "Copying Nginx config over..."
cp -f kali_update_proxy.conf /etc/nginx/sites-enabled/default

echo "Restarting Nginx..."
systemctl restart nginx

echo "Setting Nginx to start on boot..."
systemctl enable nginx
