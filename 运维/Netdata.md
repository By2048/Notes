- 网页版监控系统的信息

```sh

docker stop netdata && docker rm netdata
docker pull titpetric/netdata
docker run  -d --name netdata \
            --cap-add SYS_PTRACE \
            -v /proc:/host/proc:ro \
            -v /sys:/host/sys:ro \
            --restart=always \
            -p 19999:19999 \
            titpetric/netdata            
```

[docker hub 信息](https://hub.docker.com/r/titpetric/netdata/)
