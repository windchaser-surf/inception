FROM debian:12

RUN apt-get update && apt-get -y upgrade &&\
    apt-get install -y mariadb-server

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/init.sh /etc/mysql/init.sh
COPY ./tools/healthcheck.sh /etc/mysql/healthcheck.sh

RUN chmod +x /etc/mysql/healthcheck.sh

EXPOSE 3306

CMD [ "mysqld_safe"]