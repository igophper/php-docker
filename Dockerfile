ARG BUILD_PHP_VERSION=5.6
FROM php:${BUILD_PHP_VERSION}-fpm-alpine

ARG BUILD_TIMEZONE=Asia/Shanghai
ARG BUILD_EXTENSIONS="mysqli pdo_mysql gd zip bcmath @composer redis"

RUN curl -sSLf -o /usr/local/bin/install-php-extensions \
    https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions ${BUILD_EXTENSIONS} && \
    mv $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini && \
    apk add -U tzdata && cp /usr/share/zoneinfo/${BUILD_TIMEZONE} /etc/localtime && apk del tzdata
