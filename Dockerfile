FROM php:5.6-apache

RUN apt-get update
RUN apt-get install sqlite --yet
RUN docker-php-ext-install mbstring pdo_mysql pdo_sqlite

RUN curl -L -o tpyecho.tar.gz https://github.com/typecho/typecho/releases/download/v1.0-14.10.10-release/1.0.14.10.10.-release.tar.gz
RUN tar zxf tpyecho.tar.gz
RUN cp -a build/* /var/www/html/
RUN rm -r build tpyecho.tar.gz
