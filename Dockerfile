FROM php:8.2-apache
# Enable Apache modules
RUN a2enmod rewrite
# Install any extensions you need
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apt-get update
RUN apt-get install nano
# Set the working directory to /var/www/html
WORKDIR /var/www/html

COPY ./journal .

