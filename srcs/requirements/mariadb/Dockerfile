FROM debian:latest

RUN apt-get update && apt-get -y upgrade &&\
    apt-get install -y mariadb-server

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/init.sh /etc/mysql/init.sh

EXPOSE 3306

CMD [ "mysqld_safe"]