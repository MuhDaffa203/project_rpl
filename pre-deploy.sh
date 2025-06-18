#!/bin/bash

mkdir -p storage/framework/{cache,data,sessions,testing,views}
mkdir -p bootstrap/cache

chmod -R 775 storage bootstrap/cache

composer install --ignore-platform-reqs --no-dev --optimize-autoloader

php artisan config:cache
php artisan route:cache
php artisan view:cache
