# Dockerfile

FROM ubuntu:latest
USER root
EXPOSE 8000

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y vim git python3 python3-pip python3-dev locales fonts-liberation \
    && cp /usr/bin/python3 /usr/bin/python \
    && cp /usr/bin/pip3 /usr/bin/pip \
    && mkdir -p /root/.jupyter \
    && mkdir /home/notebook \
    && pip install jupyter

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

ENV SHELL=/bin/bash \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

CMD ["jupyter","notebook"]


# build

docker build -t jupyter:latest Jupyter


# run

docker run -it jupyter bash

docker run -d --name notebook \
    -v /home/Jupyter/notebook:/home/notebook \
    --restart=always \
    -p 5555:8000 \
    jupyter