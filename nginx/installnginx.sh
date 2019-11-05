#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo service nginx start
echo "Hello World" > /var/www/html/index.nginx-debian.html
