
docker stop filebrowser && docker rm filebrowser
docker run -d --name=filebrowser --user $(id -u):$(id -g) filebrowser/filebrowser
docker cp filebrowser:/database.db .
docker cp filebrowser:/.filebrowser.json .
docker stop filebrowser && docker rm filebrowser



docker stop filebrowser && docker rm filebrowser
docker run -d \
    -v /root/docker/filebrowser/srv:/srv \
    -v /root/docker/filebrowser/database.db:/database.db \
    -v /root/docker/filebrowser/.filebrowser.json:/.filebrowser.json \
    -p 8008:80 \
    --name=filebrowser \
    --restart=always \
    --user $(id -u):$(id -g) \
    filebrowser/filebrowser
