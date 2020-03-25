
COMPOSE_PROJECT_NAME=zk docker-compose up
COMPOSE_PROJECT_NAME=zk docker-compose ps

docker stop zoo1 && docker rm zoo1 && docker stop zoo2 && docker rm zoo2 && docker stop zoo3 && docker rm zoo3

COMPOSE_PROJECT_NAME=zookeeper docker-compose -f zookeeper.yml up -d
