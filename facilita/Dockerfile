FROM php:7.0.0-apache
WORKDIR /var/www/html
        
COPY ./data/default.conf /etc/nginx/conf.d/
COPY ./data/nginx.conf /etc/nginx/

RUN apt-get -y update
RUN apt-get -y install iputils-ping procps nano
RUN apt-get -y install php7.0-cli php7.0-cgi php7.0-fpm php7.0-mysqli php7.0-xml php7.0-mbstring