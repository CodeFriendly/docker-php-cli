FROM php:7.2-cli-alpine

RUN apk update \
&& apk add coreutils \
&& apk add libpng-dev libxml2-dev \
&& docker-php-ext-install -j$(nproc) gd xml tokenizer pdo_mysql zip
