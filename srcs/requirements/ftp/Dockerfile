FROM debian:latest

RUN apt-get update && apt-get upgrade && \
    apt-get -y install vsftpd 

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

#SKRIPT IST AKTUELL NOCH IM CONTAINER REINLADEN UND CHECKEN OB ES FUNKTIONERT 
#debuigen mit /usr/sbin/vsftpd /etc/vsftpd.conf
#https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-for-a-user-s-directory-on-debian-10
CMD ["vsftpd", "/etc/vsftpd.conf"]