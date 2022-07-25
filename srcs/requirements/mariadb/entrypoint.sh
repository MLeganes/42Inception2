if [ ! -d "/var/lib/mysql/wordpress_data" ]; then
echo "MariaDB: creating database ${DB_NAME} and user ${DB_USER}"
service mysql start
sleep 1
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'' IDENTIFIED BY '$DB_PASS'"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@''"
mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS_ROOT')"
mysql -u root -e "FLUSH PRIVILEGES"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASS_ROOT';"
service mysql stop 
sleep 1
else
echo "MariaDB: database ${DB_NAME} exist and user ${DB_USER} exist"
fi
mysqld_safe