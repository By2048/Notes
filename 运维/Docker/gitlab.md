docker stop gitlab && docker rm gitlab
docker run --detach \
    --publish 1443:443 --publish 1080:80 --publish 1022:22 \
    --name gitlab \
    --restart always \
    --volume /root/docker/gitlab/config:/etc/gitlab \
    --volume /root/docker/gitlab/logs:/var/log/gitlab \
    --volume /root/docker/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest


https://docs.gitlab.com/omnibus/docker/