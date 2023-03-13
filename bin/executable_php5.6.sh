#!/bin/env sh
update-alternatives --set php /usr/bin/php5.6
a2dismod php7.4
a2dismod php8.1
a2enmod php5.6
systemctl restart apache2
php -i | grep "Loaded Configuration File"
