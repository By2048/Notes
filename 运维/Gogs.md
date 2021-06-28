
docker stop gogs && docker rm gogs
docker run -d \
    --name=gogs \
    -p 2002:22 \
    -p 3000:3000 \
    -v /root/docker/gogs/data:/data \
    gogs/gogs