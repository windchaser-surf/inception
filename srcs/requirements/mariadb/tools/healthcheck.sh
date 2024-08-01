#!/bin/bash

echo "TRY TO START HEALTSCRIPT" >&2

if mysqladmin ping --silent; then
    /bin/bash /etc/mysql/init.sh
    echo "Initialization script executed successfully." >&2
    exit 0
else
    echo "MariaDB is not running." >&2
    exit 1
fi
