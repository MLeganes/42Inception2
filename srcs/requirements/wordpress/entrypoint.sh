#!/bin/bash
sleep 5
cd /var/www/html
wp core download --allow-root
cp /wp-config.php /var/www/html/
wp core install --allow-root \
				--url=$DOMAIN_NAME \
				--title=42Inception \
				--admin_user=$WP_USER \
				--admin_password=$WP_PASS \
				--admin_email=$WP_USER_EMAIL

wp core config	--dbhost=$DB_HOST \
				--dbname=$DB_NAME \
				--dbuser=$DB_USER \
				--dbpass=$DB_PASS \
				--allow-root

wp user create	$WP_USER2 \
				$WP_USER2_EMAIL \
				--role=author \
				--user_pass=$WP_USER2 \
				--allow-root

mkdir /run/php
cd -
php-fpm7.3 -F