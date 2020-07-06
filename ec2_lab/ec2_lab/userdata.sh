#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd.service
systemctl enable httpd.service
echo "Hi there , I am $(hostname -f)" > /var/www/html/index.html
