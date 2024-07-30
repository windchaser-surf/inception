FROM debian:latest

RUN apt-get update && apt-get -y upgrade &&\
    apt-get install -y wget tar php-fpm systemctl

WORKDIR /var/www/html/

COPY    ./conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY    ./conf/wp-config.php /var/www/html/wordpress/wp-config-php 

RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz && \
    rm latest.tar.gz 

EXPOSE 9000

CMD ["systemctl", "start", "php8.2-fpm"]