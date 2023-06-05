# ipo-trade-management

## 環境構築

- root ディレクトリで`bash scripts/init.sh`を実行

```shell
$ docker ps
CONTAINER ID   IMAGE                            COMMAND                   CREATED          STATUS          PORTS                               NAMES
44bce71f144f   ipo-trade-management-ipo-nginx   "/docker-entrypoint.…"   13 seconds ago   Up 13 seconds   0.0.0.0:80->80/tcp                  ipo-nginx
827b0821a6a5   ipo-trade-management-ipo-app     "docker-php-entrypoi…"   14 seconds ago   Up 13 seconds   9000/tcp                            ipo-app
2a720532c3f8   mysql:8.0                        "docker-entrypoint.s…"   2 minutes ago    Up 2 minutes    0.0.0.0:3306->3306/tcp, 33060/tcp   ipo-trade-management-ipo-mysql-1
50910a7b1167   redis:alpine                     "docker-entrypoint.s…"   2 minutes ago    Up 2 minutes    0.0.0.0:16379->6379/tcp             ipo-redis
```

- http://localhost/ にアクセス
- 下記画面が表示されたら成功

![picture](src/ipo-app/resources/images/laravel_top_view.png)
