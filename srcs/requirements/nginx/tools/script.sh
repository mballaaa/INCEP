#!/bin/bash

config_file="/etc/nginx/nginx.conf"
ssl_certificate_key="/etc/nginx/ssl/$PATH_KEY"
ssl_certificate="/etc/nginx/ssl/$PATH_CTR"




sed -i -e 's/listen 443;/listen 443 ssl;/g' "$config_file"


sed -i -e 's/listen \[::\]:443;/listen [::]:443 ssl;/g' "$config_file"

sed -i -e "/ssl_protocols TLSv1.2 TLSv1.3;/a  ssl_certificate $ssl_certificate;" "$config_file"

sed -i -e "/ssl_protocols TLSv1.2 TLSv1.3;/a  ssl_certificate_key $ssl_certificate_key;" "$config_file"


nginx -g "daemon off;"