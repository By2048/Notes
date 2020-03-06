## 文档
[TO Github Docker Shadowsocks](https://github.com/oddrationale/docker-shadowsocks)


## 部署
```sh
docker pull oddrationale/docker-shadowsocks
docker run -d --name shadowsocks\
    -p 1984:1984 \
    oddrationale/docker-shadowsocks \
    -s 0.0.0.0 -p 1984 -k 123456 -m aes-256-cfb
```



## DockerFile
- [pip shadowsocks](https://pypi.org/project/shadowsocks/)
```sh
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==2.8.2

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
```