#!/bin/sh -eux

# Here, we are going to grab repositories.
add-apt-repository ppa:ondrej/php -y
add-apt-repository ppa:git-core/ppa -y

# Here, we are goign to grab npm and nodejs LTS
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash

# Here we are going to run and update for the latest packages.
apt-get update -y