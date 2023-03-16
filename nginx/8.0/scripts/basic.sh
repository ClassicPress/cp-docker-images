#!/bin/sh -eux

# Here, we are going to install some basic packages to get the server going.
apt-get install --no-install-recommends \
    git \
    mariadb-client \
    nginx \
    nodejs \
    php-imagick \
    php-memcache \
    php-memcached \
    php-pear \
    php-ssh2 \
    subversion \
    -y

# Here, we going to install shyaml 
pip3 install shyaml