docker run -d --name rsshub -p 1200:1200 diygod/rsshub



```sh

docker stop rsshub && docker rm rsshub
docker run -d --name rsshub \
    -p 1221:1200 \
    -e REDIS_PASSWORD=dk00redis11pwd \
    -e HTTP_BASIC_AUTH_NAME=rsshub \
    -e HTTP_BASIC_AUTH_PASS=dk00rss11pwd \
    --restart=always \
    diygod/rsshub



docker stop rsshub && docker rm rsshub
docker run -d --name rsshub \
    -p 1221:1200 \
    --restart=always \
    diygod/rsshub

```

http://rss:dk00rss11pwd@47.52.30.16:1200/protected/rsshub/rss

