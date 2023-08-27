FROM serversideup/php:8.2-fpm-nginx
WORKDIR /var/www/html

# Installing Node.js and PHP PostgreSQL extensions
RUN apt-get update && apt-get install -y php-pgsql && curl -fsSL https://deb.nodesource.com/setup_19.x | bash - && apt-get install -y nodejs && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Initial composer install without scripts
COPY composer.json composer.lock ./
RUN composer install --no-scripts --no-autoloader

# Copy the rest of the application
COPY . ./

# Finish the composer installation
RUN composer dump-autoload --optimize && \
    composer run-script post-autoload-dump

COPY docker/dev-ssu/nginx.conf /etc/nginx/conf.d/custom.conf

# Setting up useful aliases for development
RUN echo "alias ll='ls -al'" >>/etc/bash.bashrc && echo "alias a='php artisan'" >>/etc/bash.bashrc && echo "alias mfs='php artisan migrate:fresh --seed'" >>/etc/bash.bashrc && echo "alias cda='composer dump-autoload'" >>/etc/bash.bashrc && echo "alias run='./scripts/run'" >>/etc/bash.bashrc && echo "alias logs='tail -f storage/logs/laravel.log'" >>/etc/bash.bashrc
