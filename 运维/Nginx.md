

```sh
docker stop nginx && docker rm nginx
docker run -d --name nginx \
    -v /root/docker/nginx/conf.d:/etc/nginx/conf.d \
    -v /root/docker/nginx/nginx.conf:/etc/nginx/nginx.conf \
    \
    -v /root/service:/usr/share/nginx/service \
    -p 8000:8000 \
    \
    -p 80:80 \
    --restart=always \
    nginx
```