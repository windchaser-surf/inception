FROM debian:latest

RUN apt-get update && apt-get upgrade && \
    apt-get -y install vsftpd 

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

#SKRIPT IST AKTUELL NOCH IM CONTAINER REINLADEN UND CHECKEN OB ES FUNKTIONERT 
#debuigen mit /usr/sbin/vsftpd /etc/vsftpd.conf

CMD ["vsftpd", "/etc/vsftpd.conf"]