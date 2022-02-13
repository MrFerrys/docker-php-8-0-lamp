FROM php:8.0-apache

RUN apt update
RUN apt-get install -y libxml2 libxml2-dev libzip-dev zip

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-install xml
RUN docker-php-ext-install zip
RUN docker-php-ext-install opcache
