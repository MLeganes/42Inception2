# if [ ! -d "/var/lib/mysql/wordpress_data" ]; then
echo "before dir does not exist"
echo "hola"
echo $DB_NAME
echo ${DB_NAME}
echo "hola"

# service mysql start

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
echo "done dir does not exist"

# else
echo "before dir does exist"
# fi

mysqld_safe