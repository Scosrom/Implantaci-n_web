#!/bin/bash

# Variables:

WORDPRESS_DB_NAME="mydatabase"
WORDPRESS_DB_USER="myuser"
WORDPRESS_DB_PASSWORD="mypassword"
DB_HOST="127.0.0.1"

# Instalar Php

sudo apt update
sudo apt install php
sudo apt install php-mysql
sudo systemctl restart apache2


# Instalar WordPress
wget http://wordpress.org/latest.tar.gz -P /tmp
tar -xzvf /tmp/latest.tar.gz -C /tmp
mv -f /tmp/wordpress/* /var/www/html

# Configurar base de datos y usuario MySQL

#. .env

mysql -u root <<myscript
DROP DATABASE IF EXISTS $WORDPRESS_DB_NAME;
CREATE DATABASE $WORDPRESS_DB_NAME;
DROP USER IF EXISTS $WORDPRESS_DB_USER@$IP_CLIENTE_MYSQL;
CREATE USER $WORDPRESS_DB_USER@$IP_CLIENTE_MYSQL IDENTIFIED BY '$WORDPRESS_DB_PASSWORD';
GRANT ALL PRIVILEGES ON $WORDPRESS_DB_NAME.* TO $WORDPRESS_DB_USER@$IP_CLIENTE_MYSQL;
FLUSH PRIVILEGES;
exit
myscript

# Configurar wp-config.php
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i "s/database_name_here/$WORDPRESS_DB_NAME/" /var/www/html/wp-config.php
sed -i "s/username_here/$WORDPRESS_DB_USER/" /var/www/html/wp-config.php
sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/" /var/www/html/wp-config.php
sed -i "s/localhost/$WORDPRESS_DB_HOST/" /var/www/html/wp-config.php

chown -R www-data:www-data /var/www/html/
