#!/bin/bash

echo "127.0.0.1 sistema.ajustes.d" >> /etc/hosts
# ln -s /etc/nginx/sites-available/facilita /etc/nginx/sites-enabled/facilita
service php7.0-fpm --full-restart
# nginx -g 'daemon off;'
