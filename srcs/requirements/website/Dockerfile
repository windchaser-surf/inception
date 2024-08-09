FROM debian:12

RUN apt-get update && apt-get upgrade &&\
    apt-get install -y nginx


RUN mkdir -p /var/www/html/portfolio

COPY ./tools/ /var/www/html/portfolio
COPY ./conf/default /etc/nginx/sites-enabled/default

EXPOSE 8090

CMD ["nginx", "-g", "daemon off;"]
