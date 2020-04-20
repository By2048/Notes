apt update
apt upgrade -y
apt autoremote


pyenv update


docker pull redis
docker stop redis && docker rm redis
docker run -d --name redis \
    -p 6379:6379 \
    -v /root/docker/redis/data:/data \
    --restart=always \
    redis \
    --appendonly yes \
    --requirepass redis-password-1100

docker pull mysql
docker stop mysql && docker rm mysql
docker run -d --name mysql \
    -p 3306:3306 \
    -v /root/docker/mysql:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=mysql-password-1100 \
    --restart=always \
    mysql

docker pull mongo
docker stop mongo && docker rm mongo
docker run -d --name mongo  \
    -p 27017:27017 \
    -v /root/docker/mongo/data:/data/db \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=mongo-password-1100 \
    --restart=always \
    mongo --auth 


curl https://cht.sh/:cht.sh > /root/bin/hp
chmod +x /root/bin/hp


npm install -g npm

