#!/bin/env sh
update-alternatives --set php /usr/bin/php5.6
a2dismod php7.4
a2enmod php5.6
service apache2 restart
php -i | grep "Loaded Configuration File"
