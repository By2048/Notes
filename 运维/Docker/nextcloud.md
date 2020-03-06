### 部署


```
docker stop nextcloud && docker rm nextcloud
docker run -d \
    --name nextcloud \
    -v /root/docker/nextcloud/nextcloud:/var/www/html \
    -v /root/docker/nextcloud/apps:/var/www/html/custom_apps \
    -v /root/docker/nextcloud/config:/var/www/html/config \
    -v /root/docker/nextcloud/data:/var/www/html/data \
    -v /root/docker/nextcloud/theme:/var/www/html/themes \
    -p 2552:80 \
    nextcloud
```