#!/bin/bash

adduser --disabled-password felix
mkdir /home/felix/ftp

chown nobody:nogroup /home/felix/ftp
chmod a-w /home/felix/ftp
mkdir /home/felix/ftp/files
chown felix:felix /home/felix/ftp/files

echo "vsftpd test file" | sudo tee /home/felix/ftp/files/test.txt

/usr/sbin/vsftpd /etc/vsftpd.conf