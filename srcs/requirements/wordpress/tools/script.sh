#!/bin/bash


if [ -f "/var/www/wordpress/wp-config.php" ]; then
            echo "Wordpress already downloaded"
else

mkdir -p /var/www/wordpress



cd /var/www/wordpress

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp



wp core download --allow-root

sleep 10

mv /var/www/wordpress/wp-config-sample.php  /var/www/wordpress/wp-config.php

mv /wp-config.php /var/www/wordpress/wp-config.php


sed -i -r "s/db_name/$SQL_DATABASE/1" wp-config.php
sed -i -r "s/user_name/$SQL_USER/1" wp-config.php
sed -i -r "s/pass/$SQl_PASS/1" wp-config.php

sed -i -r "s/localhost/$HOST/1" wp-config.php

sleep 10

wp core install --url=$DOMAIN_NAME/ --title=$wp_title --admin_user=$wp_user --admin_password=$wp_pass --admin_email=$wp_email  --allow-root

wp user create $wp_user2 $wp_email2 --role=author --user_pass=$wp_pass2  --allow-root

fi
if [ ! -d /run/php ]; then
    mkdir /run/php
fi
sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

/usr/sbin/php-fpm7.4 -F