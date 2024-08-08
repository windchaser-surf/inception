#!/bin/bash

adduser --disabled-password $FTP_USER
mkdir -p /var/www/html
mkdir -p /var/run/vsftpd/empty/
echo $FTP_USER:$FTP_PW| chpasswd

chown $FTP_USER:$FTP_USER /var/www/html/
echo "$FTP_USER" | tee -a /etc/vsftpd.userlist

if (/usr/sbin/vsftpd /etc/vsftpd.conf) then 
    echo "SOMETHING GOES WRONT"
fi