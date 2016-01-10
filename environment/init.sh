#!/bin/bash -e

# link shared directory to local
ln -s /var/www/mantis /shared/site/mantis

# restart services
/sbin/service httpd restart
/sbin/service mysqld restart

/bin/bash