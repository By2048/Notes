### 部署 

```
docker stop v2ray && docker rm v2ray
docker run -d --name v2ray \
    -v /root/docker/v2ray:/etc/v2ray \
    -p 3553:3553 \
    --restart=always \
    v2ray/official  \
    v2ray -config=/etc/v2ray/config.json
```