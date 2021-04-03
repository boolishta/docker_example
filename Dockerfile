FROM debian:buster

RUN apt update
RUN apt install -y nginx
# RUN apt install -y mariadb-server
RUN apt install -y curl
# RUN apt install -y vim
# RUN apt install -y php7.3-fpm php7.3-mysql php7.3-mbstring

RUN chown -R www-data /var/www/html/

COPY ./srcs/run.sh /var
COPY ./srcs/site/index.html /var/www/html
COPY ./srcs/site/css /var/www/html/css
COPY ./srcs/site/img /var/www/html/img
COPY ./srcs/site/js /var/www/html/js
COPY ./srcs/site/upload /var/www/html/upload

RUN openssl req -x509 -newkey rsa:2048 -nodes -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=21 school/OU=gagustin/CN=localhost" -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt;

COPY ./srcs/nginx-config /etc/nginx/sites-available/localhost
RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
RUN rm -rf /etc/nginx/sites-enabled/default

# RUN curl -O https://wordpress.org/latest.tar.gz
# RUN curl -O https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
# RUN tar -xf latest.tar.gz -C /var/www/html/
# RUN tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz -C /var/www/html/
# RUN mv /var/www/html/phpMyAdmin-5.0.4-all-languages /var/www/html/phpmyadmin
# RUN rm -rf wordpress-5.6.tar.gz phpMyAdmin-5.0.4-all-languages.tar.gz
# COPY ./srcs/wp-config.php /var/www/html/wordpress/
# COPY ./srcs/config.inc.php /var/www/html/phpmyadmin/
# RUN chmod -R 755 /var/www/html/phpmyadmin/config.inc.php

EXPOSE 80 
EXPOSE 443

CMD bash /var/run.sh