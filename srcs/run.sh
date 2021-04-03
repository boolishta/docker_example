# service mysql start
# echo "CREATE DATABASE wp;" | mysql -u root --skip-password
# echo "GRANT ALL PRIVILEGES ON wp.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
# echo "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root';" | mysql -u root --skip-password
# echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

service nginx start
# service php7.3-fpm start
bash