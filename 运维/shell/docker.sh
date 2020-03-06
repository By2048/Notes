# docker pull mongo
# docker pull nginx
# docker pull python
# docker pull redis
# docker pull mysql
# docker pull php
# docker pull nvim
# docker pull titpetric/netdata
# docker pull codercom/code-server
                   
# docker pull mongo:4.0.6
# docker pull python:3.7.3
# docker pull python:3.4.1
# docker pull nginx:1.14.2
# docker pull redis:5.0.3
# docker pull mysql:5.7.25







docker stop netdata && docker rm netdata
docker run -d --name netdata \
    --cap-add SYS_PTRACE \
    -v /proc:/host/proc:ro \
    -v /sys:/host/sys:ro \
    --restart=always \
    -p 19999:19999 \
    titpetric/netdata