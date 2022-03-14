FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
        git \
        curl \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
        libpq-dev \
        zip \
        unzip

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo pgsql pdo_pgsql mbstring exif pcntl bcmath gd

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
