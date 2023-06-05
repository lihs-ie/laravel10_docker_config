#!/bin/bash

if (test -z "$(ls -A src/)" ; echo $?) then
  rm -r ./src
fi

docker compose -f docker-compose.yml up -d --build

docker exec udemy-laravel9-crm-app bash -c cd /src && composer create-project laravel/laravel ./src && composer require barryvdh/laravel-debugbar && php artisan lang:publish

docker exec  udemy-laravel9-crm-app bash -c cd /src && php -r "copy('https://readouble.com/laravel/8.x/ja/install-ja-lang-files.php', 'install-ja-lang.php');" && php -f install-ja-lang.php && php -r "unlink('install-ja-lang.php');"

mv ./src/resources/lang ./src/

/usr/bin/osascript -e 'display notification "hogehoge" with title "Fuga"'
