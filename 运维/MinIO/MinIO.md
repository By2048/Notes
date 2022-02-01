
## 搭建环境

```sh
docker pull minio
docker stop minio && docker rm minio

docker run -d \
    -p 9000:9000 \
    -v /root/docker/minio/data:/data \
    -e MINIO_ROOT_USER=admin \
    -e MINIO_ROOT_PASSWORD=123123123 \
    --name=minio \
    --restart=always \
    minio/minio \
    server /data
```

## Python 使用

