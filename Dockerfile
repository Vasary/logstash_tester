FROM php:8.0.2-cli-alpine

COPY --from=composer:1 /usr/bin/composer /usr/local/bin/composer

WORKDIR /app
COPY . .

RUN composer install --no-dev
