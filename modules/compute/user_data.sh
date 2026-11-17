#!/bin/bash
dnf update -y
dnf install -y nginx
systemctl enable --now nginx
TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
AZ=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "<h1>Deployed via Terraform | AZ: $AZ</h1>" > /usr/share/nginx/html/index.html
