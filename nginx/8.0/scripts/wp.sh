#!/bin/sh -eux

# Here, we are going to install wp cli as docker user
curl --silent -L -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x /usr/local/bin/wp
chown docker:docker /usr/local/bin/wp