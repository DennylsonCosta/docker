#For Debian 9
FROM debian:stretch-slim

LABEL maintainer="Dennylson Costa <dennylsonpdr@gmail.com>"

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

# Install NGINX AND PHP
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install iputils-ping procps ufw nano nginx curl
RUN apt-get -y install php7.0-cli php7.0-cgi php7.0-fpm php7.0-mysqli php7.0-xml php7.0-mbstring php7.0-mcrypt php7.0-memcached php7.0-curl  php7.0-curl php7.0-gd php7.0-bcmath php7.0-bz2 php7.0-iconv php7.0-imap php7.0-intl php7.0-sqlite php7.0-recode php7.0-redis php7.0-soap php7.0-tidy php7.0-xmlrpc php7.0-zip php7.0-zmq

# Forward request logs to Docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

STOPSIGNAL SIGTERM

ENTRYPOINT ["/entrypoint.sh"]