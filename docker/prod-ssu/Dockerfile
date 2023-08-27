FROM serversideup/php:8.2-fpm-nginx as get-php-deps
WORKDIR /app
COPY composer.json composer.lock ./
RUN composer install --no-dev --no-interaction --no-plugins --no-scripts --prefer-dist
COPY . .

FROM node:19 as static-assets
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install && npm cache clean --force
COPY . .
RUN npm run build

FROM serversideup/php:8.2-fpm-nginx
WORKDIR /var/www/html
ARG POSTGRES_VERSION=15
RUN apt-get update && apt-get install -y php-pgsql && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
COPY composer.json composer.lock ./
RUN composer install --no-dev --no-interaction --no-plugins --no-scripts --prefer-dist && composer dump-autoload
COPY --chown=9999:9999 . .
COPY --from=static-assets --chown=9999:9999 /app/public/build ./public/build
COPY --chmod=755 docker/prod-ssu/etc/s6-overlay/ /etc/s6-overlay/
RUN php artisan route:cache && php artisan view:cache
RUN echo "alias ll='ls -al'" >>/etc/bash.bashrc && echo "alias a='php artisan'" >>/etc/bash.bashrc && echo "alias mfs='php artisan migrate:fresh --seed'" >>/etc/bash.bashrc && echo "alias cda='composer dump-autoload'" >>/etc/bash.bashrc && echo "alias run='./scripts/run'" >>/etc/bash.bashrc && echo "alias logs='tail -f storage/logs/laravel.log'" >>/etc/bash.bashrc
