#!/bin/sh -eux

# Install composer
wget https://getcomposer.org/download/2.2.4/composer.phar
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
chown -R docker:docker /usr/local/bin/composer