FROM debian:latest

RUN apt-get update && \
    apt-get install -y nginx openssl systemctl gettext-base

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=AU/ST=VIENNA/L=VIENNA/O=42/CN=fwechsle.42.fr"
  

COPY ./conf/default /default_tmp
#COPY ./conf/test.html /var/www/html/test.html

EXPOSE 443
#CMD ["envsubst < /etc/nginx/sites-enabled/default > /etc/nginx/sites-enabled/default && systemctl start nginx.service;"]
CMD ["sh", "-c", "envsubst < /default_tmp > /etc/nginx/sites-enabled/default && nginx -g 'daemon off;'"]
#CMD [ "systemctl", "start", "nginx.service"]