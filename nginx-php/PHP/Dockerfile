FROM php:7.0-fpm
MAINTAINER Dennylson Costa <dennylsonpdr@gmail.com>

RUN echo 'deb http://httpredir.debian.org/debian jessie contrib' >> /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y --force-yes libssl-dev curl  libcurl4-gnutls-dev libxml2-dev libicu-dev libmcrypt4 libmemcached11 openssl nano

#CONFIGURAÇÕES DO OPCACHE
RUN docker-php-ext-install opcache

#CONFIGURAÇÕES DO APCU
RUN pecl install apcu-5.1.5 && docker-php-ext-enable apcu

#LIBS EXTRAS
RUN docker-php-ext-install bcmath
RUN apt-get install -y libbz2-dev libmcrypt-dev git

RUN docker-php-ext-install bz2
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mcrypt
RUN apt-get install -y libpq-dev
RUN apt-get install -y libicu-dev
RUN docker-php-ext-install intl

#MEMCACHED
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev memcached\
    && pecl install memcached-3.0.3 \
    && docker-php-ext-enable memcached

#GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng16-16 
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

#PDO - CUSTOMIZAR A SEU DISPOR
RUN docker-php-ext-install pdo_mysql

EXPOSE 9000
CMD ["php-fpm"]
