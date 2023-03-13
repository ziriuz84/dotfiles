#!/bin/env sh
update-alternatives --set php /usr/bin/php7.4
a2dismod php5.6
a2enmod php7.4
service apache2 restart
php -i | grep "Loaded Configuration File"
