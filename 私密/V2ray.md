# 科学上网工具


## 容器部署 

### 旧版本（很久未更新）
```
docker stop v2ray && docker rm v2ray
docker run -d --name v2ray \
    -v /root/docker/v2ray:/etc/v2ray \
    -p 3553:3553 \
    --restart=always \
    v2ray/official  \
    v2ray -config=/etc/v2ray/config.json
```

### 新版本（目前使用）
```
docker stop v2fly && docker rm v2fly
docker pull v2fly/v2fly-core
docker run -d --name v2fly \
    -v /root/docker/v2fly:/etc/v2ray \
    -p 3553:3553 \
    --restart=always \
    v2fly/v2fly-core \
    v2ray -config=/etc/v2ray/config.json
```


## 相关资料链接


- https://github.com/v2ray/v2ray-core
- https://github.com/v2fly/v2ray-core
- https://github.com/2dust/v2rayN