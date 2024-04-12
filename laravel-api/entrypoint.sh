#!/bin/sh

chown -R www-data:www-data /app/storage

nginx -g 'daemon on;' && php-fpm