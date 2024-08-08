FROM debian:12

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install wget php php-mysql

#RUN mkdir /var/www/html/adminer

WORKDIR /var/www/html/adminer

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O index.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/adminer"]    
