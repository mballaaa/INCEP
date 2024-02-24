#!/bin/bash
service mariadb start
sleep 5
mariadb -e "CREATE DATABASE IF NOT EXISTS \`$SQL_DATABASE\`"

mariadb -e "CREATE USER IF NOT EXISTS \`$SQL_USER\`@'%' IDENTIFIED BY '$SQl_PASS'"

mariadb -e "GRANT ALL PRIVILEGES ON \`$SQL_DATABASE\`.* TO \`$SQL_USER\`@'%' IDENTIFIED BY '$SQl_PASS'"

mariadb -e "FLUSH PRIVILEGES"

mysqladmin -u root shutdown

mysqld_safe