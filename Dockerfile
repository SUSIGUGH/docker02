FROM php:8.0-apache
RUN mkdir /var/www/html -p
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY html /var/www/html
