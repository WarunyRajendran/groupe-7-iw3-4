FROM php:5.6-apache

RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli

# COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# RUN composer install

# RUN a2enmod rewrite

RUN yes | pecl install xdebug-2.5.5 \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini




