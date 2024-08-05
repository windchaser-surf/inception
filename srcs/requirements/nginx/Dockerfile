FROM debian:latest

RUN apt-get update && \
    apt-get install -y nginx openssl systemctl gettext-base

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=AU/ST=VIENNA/L=VIENNA/O=42/CN=fwechsle.42.fr"
  

COPY ./conf/default /etc/nginx/sites-enabled/default
#COPY ./conf/test.html /var/www/html/test.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
#CMD [ "systemctl", "start", "nginx.service"]