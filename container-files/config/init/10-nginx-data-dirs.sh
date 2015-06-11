#!/bin/sh

#
# This script will be placed in /config/init/ and run when container starts.
# It creates (if they're not exist yet) necessary directories
# from where custom Nginx configs can be loaded (from mounted /data volumes).
#

set -e

mkdir -p /data/conf/nginx/addon.d
mkdir -p /data/conf/nginx/conf.d
mkdir -p /data/conf/nginx/hosts.d
mkdir -p /data/conf/nginx/nginx.d
chmod 711 /data/conf/nginx

mkdir -p /data/www/default

wget -O tpyecho.tar.gz https://github.com/typecho/typecho/releases/download/v1.0-14.10.10-release/1.0.14.10.10.-release.tar.gz
tar zxf tpyecho.tar.gz
mv build/* /data/www/default/
rm -r tpyecho.tar.gz build

chown -R www:www /data/www
