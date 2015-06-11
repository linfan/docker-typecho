FROM million12/nginx-php:php-55

RUN wget -O tpyecho.tar.gz https://github.com/typecho/typecho/releases/download/v1.0-14.10.10-release/1.0.14.10.10.-release.tar.gz \
  && tar zxf tpyecho.tar.gz \
  && mv build/* /data/www/default/
  
