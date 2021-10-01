FROM php:5.6-apache

# RUN a2enmod rewrite

# COPY php.ini /usr/local/etc/php/php.ini

# COPY php.ini /usr/local/etc/php/conf.d/

RUN docker-php-ext-install pdo mysqli pdo_mysql 

RUN echo date.timezone = Europe/Paris >> /usr/local/etc/php/conf.d/timezone.ini

RUN apt-get update -y && apt-get install -y libpng-dev libfreetype6-dev libyaml-dev

RUN apt-get update && apt-get install -y libmemcached11 libmemcachedutil2 build-essential libmemcached-dev libz-dev
RUN pecl install memcached-2.2.0
RUN echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini

RUN yes | pecl install xdebug-2.5.5 \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini





