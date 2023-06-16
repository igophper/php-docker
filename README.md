# Build PHP Docker Images
build php docker images 
```shell
docker build --build-arg BUILD_PHP_VERSION=8.2 BUILD_TIMEZONE=Asia/Shanghai BUILD_EXTENSIONS="mysqli pdo_mysql gd zip bcmath @composer redis mcrypt" .
```
php extensions list:[php-extension-installer](https://github.com/mlocati/docker-php-extension-installer)