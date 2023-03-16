FROM benlumia007/ubuntu:22.04

# Here, we are going to set the frontend to no interactive.
ENV DEBIAN_FRONTEND=noninteractive

# Here, we are going to copy update.sh
ADD nginx/8.0/scripts/update.sh /home/docker/update.sh
RUN bash /home/docker/update.sh && \
    rm -rf /home/docker/update.sh

# Here, we are going to copy basic.sh
ADD nginx/8.0/scripts/basic.sh /home/docker/basic.sh
RUN bash /home/docker/basic.sh && \
    rm -rf /home/docker/basic.sh

# Here, we are going to copy php.sh
ADD nginx/8.0/scripts/php.sh /home/docker/php.sh
RUN bash /home/docker/php.sh && \
    rm -rf /home/docker/php.sh

# Here, we are going to set fpm for both 8.0 and 8.1
ADD nginx/8.0/config/php/8.0-fpm.conf /etc/php/8.0/fpm/pool.d/www.conf

# Here, we are going to add nginx conf
ADD nginx/8.0/config/nginx/nginx.conf /etc/nginx/nginx.conf

# Here, we are going to configure composer
ADD nginx/8.0/scripts/composer.sh /home/docker/composer.sh
RUN bash /home/docker/composer.sh && \
    rm -rf /home/docker/composer.sh

# Here, we are going to configure wp
ADD nginx/8.0/scripts/wp.sh /home/docker/wp.sh
RUN bash /home/docker/wp.sh && \
    rm -rf /home/docker/wp.sh

# Here, we are goiing to add some basic configuration files
ADD nginx/8.0/config/supervisord/main.conf /etc/supervisor/conf.d/main.conf
ADD nginx/8.0/config/supervisord/start.sh /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

USER docker

WORKDIR /home/docker

CMD [ "start" ]