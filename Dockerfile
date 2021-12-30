#FROM php:7.2-apache

#RUN apt-get update && apt-get install -y

#RUN docker-php-ext-install mysqli pdo_mysql

#RUN mkdir /app \
 #&& mkdir /crud_siakad \
 #&& mkdir /crud_siakad/www
 
#COPY www/ /crud_siakad/www/

#RUN cp -r /crud_siakad/www/* /var/www/html/.


FROM php:7.4.3-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
COPY . /var/www/html
