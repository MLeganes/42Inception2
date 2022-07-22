if [ ! -d "/var/lib/mysql/wordpress_data" ]; then
echo "MariaDB: creating database ${DB_NAME} and user ${DB_USER}"
service mysql start
sleep 1
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'' IDENTIFIED BY '$DB_PASS'"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@''"
mysql -u root -e "FLUSH PRIVILEGES"

# mysql -u root <<SHIT
# CREATE DATABASE $DB_NAME;
# CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
# GRANT ALL PRIVILEGES ON wordpress_data.* TO '$DB_USER'@'%';
# SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS_ROOT');
# SHIT
# mysql -u root -e "FLUSH PRIVILEGES"

service mysql stop 
sleep 1

else
echo "MariaDB: database ${DB_NAME} exist and user ${DB_USER} exist"
fi
mysqld_safe