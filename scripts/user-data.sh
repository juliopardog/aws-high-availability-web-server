#!/bin/bash

yum update -y
yum install -y httpd

INSTANCE_ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)

echo "<h1>Highly Available AWS Web Server</h1>" > /var/www/html/index.html
echo "<p>Instance ID: $INSTANCE_ID</p>" >> /var/www/html/index.html

systemctl start httpd
systemctl enable httpd
