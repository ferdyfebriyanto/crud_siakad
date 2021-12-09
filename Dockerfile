FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app \
 && mkdir /crud_siakad \
 && mkdir /crud_siakad/www
 
COPY www/ /crud_siakad/www/

RUN cp -r /crud_siakad/www/* /var/www/html/.
