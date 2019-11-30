#For Debian 9
FROM debian:stretch-slim

LABEL maintainer="Dennylson Costa <dennylson@appfacilita.com>"

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Install NGINX
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install iputils-ping procps ufw nano nginx curl
RUN apt-get -y install php7.0-cli php7.0-cgi php7.0-fpm php7.0-mysqli php7.0-xml php7.0-mbstring php7.0-mcrypt

# Forward request logs to Docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log \
  && mkdir /var/run/php && touch /var/run/php/php7.0-fpm.sock

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
# CMD ["service", "php7.0-fpm", "--full-restart"]