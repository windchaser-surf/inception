FROM debian:latest

RUN apt-get update && apt-get -y upgrade &&\
    apt-get install -y mariadb-server

CMD [ "mysqld_safe" ]