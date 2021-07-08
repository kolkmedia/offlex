FROM php:7.0-apache

# set main params
ENV APP_HOME /var/www/html/offlex_base
ENV WWW_HOME /var/www/html/public_html

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y libmcrypt-dev
# RUN pecl install mcrypt-1.0.0
# RUN docker-php-ext-configure mcrypt
# RUN docker-php-ext-enable mcrypt

# install all the dependencies and enable PHP modules
RUN apt-get install -y \
      build-essential \
      procps \
      nano \
      git \
      unzip \
      libicu-dev \
      zlib1g-dev \
      libxml2 \
      libxml2-dev \
      libreadline-dev \
      supervisor \
      cron \
      libzip-dev \
      libfreetype6-dev \
      libjpeg62-turbo-dev \
      libpng-dev

    RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
    RUN docker-php-ext-install -j$(nproc) mcrypt zip sockets pdo_mysql gd bcmath intl opcache

    RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd
    RUN rm -rf /tmp/* \
    && rm -rf /var/list/apt/* \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN docker-php-ext-install pcntl

# RUN pecl install mcrypt-1.0.2
# RUN docker-php-ext-enable mcrypt

# disable default site and delete all default files inside APP_HOME
RUN a2dissite 000-default.conf

# COPY assets/offlex.conf /etc/apache2/conf.d/

# create document root
RUN mkdir -p $APP_HOME
RUN mkdir -p $WWW_HOME

# change uid and gid of apache to docker user uid/gid
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data
RUN chown -R www-data:www-data \
$APP_HOME \
$WWW_HOME

# put apache and php config for Laravel, enable sites
COPY ./docker/laravel.conf /etc/apache2/sites-available/laravel.conf
COPY ./docker/laravel-ssl.conf /etc/apache2/sites-available/laravel-ssl.conf
RUN a2ensite laravel.conf && a2ensite laravel-ssl
COPY ./docker/php.ini /usr/local/etc/php/php.ini

# enable apache modules
RUN a2enmod rewrite
RUN a2enmod ssl

# generate certificates
# TODO: change it and make additional logic for production environment
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/ssl-cert-kolkmedia.offlex.key -out /etc/ssl/certs/ssl-cert-kolkmedia.offlex.pem -subj "/C=AT/ST=Vienna/L=Vienna/O=Security/OU=Development/CN=kolkmedia.offlex"

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN for mod in rewrite headers; do a2enmod $mod; done && service apache2 restart

# set working directory
WORKDIR $APP_HOME

USER www-data
USER root

# RUN composer install
