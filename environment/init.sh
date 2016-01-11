#!/bin/bash -e

# link shared directory to local
ln -s /var/www/mantis /shared/site/mantis

#
/usr/bin/mysql_install_db

# restart services
/sbin/service httpd restart
/sbin/service mysqld restart

/bin/bash