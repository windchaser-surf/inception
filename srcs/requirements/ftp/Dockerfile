FROM debian:12

RUN apt-get update && apt-get upgrade && \
    apt-get -y install vsftpd systemctl

COPY ./conf/vsftpd.conf /etc/vsftpd.conf
COPY ./tools/init.sh /etc/init.sh

EXPOSE 21
EXPOSE 10000-10100

CMD ["/bin/bash", "/etc/init.sh"]