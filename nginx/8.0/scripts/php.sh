#!/bin/sh -eux

# Here, we are going to install PHP 8.0
apt-get install --no-install-recommends \
    php8.0-bcmath \
    php8.0-cli \
    php8.0-common \
    php8.0-curl \
    php8.0-dev \
    php8.0-fpm \
    php8.0-gd \
    php8.0-imap \
    php8.0-imagick \
    php8.0-imap \
    php8.0-intl \
    php8.0-mbstring \
    php8.0-mysql \
    php8.0-pcov \
    php8.0-ssh2 \
    php8.0-soap \
    php8.0-xml \
    php8.0-yaml \
    php8.0-zip \
    -y

# Here, we are going to create default directory for php
mkdir -p /run/php

# Here we are going to make sure that PHP 8.0 is default
sudo update-alternatives --set php /usr/bin/php8.0