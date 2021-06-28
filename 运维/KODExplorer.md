
[官方仓库](https://gitee.com/kalcaddle/KODExplorer.git)

[xaljer/kodexplorer 镜像](https://hub.docker.com/r/xaljer/kodexplorer/dockerfile)


``` sh
docker stop kodexplorer && docker rm kodexplorer
docker run -d --name kodexplorer \
    -v /root/docker/kodexplorer:/var/www/html \
    -p 8080:80 \
    -w /usr/src/KODExplorer \
    --restart=always \
    xaljer/kodexplorer
```