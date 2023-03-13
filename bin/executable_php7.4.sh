#!/bin/env sh
update-alternatives --set php /usr/bin/php7.4
a2dismod php5.6
a2dismod php8.1
a2enmod php7.4
systemctl restart apache2
php -i | grep "Loaded Configuration File"
