FROM debian:bullseye

RUN apt-get update && apt-get upgrade &&\
    apt-get install -y wget php-mysql php-fpm

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./tools/init.sh /init.sh

RUN mkdir /run/php

WORKDIR /var/www/html/wordpress

EXPOSE 9000

CMD ["/bin/bash", "/init.sh"]