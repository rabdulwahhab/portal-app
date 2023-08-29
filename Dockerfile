# Download base image ubuntu 22.04
FROM ubuntu:22.04

# LABEL about the custom image
LABEL author="Rayyan Abdul-Wahhab"
LABEL maintainer="rayyan10@bellsouth.net"
LABEL version="0.1"
LABEL description="The portal app Dockerfile"

# Update Ubuntu Software repository
RUN apt-get clean
RUN apt-get update
RUN apt-get upgrade -y

# Install base dependencies
RUN apt-get install -y -q --no-install-recommends \
    ca-certificates \
    curl \
    watchman

# Install Node
ENV NODE_VERSION 18.17.1
ENV NODE_DIR /usr/local/share
WORKDIR $NODE_DIR
RUN curl -O https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz \
    && tar xzvf node-v$NODE_VERSION-linux-x64.tar.gz \
    && rm *.gz
RUN echo export NODEJS_HOME=$NODE_DIR/node-v$NODE_VERSION-linux-x64/bin >> /root/.bashrc
ENV PATH $PATH:$NODE_DIR/node-v$NODE_VERSION-linux-x64/bin
RUN corepack enable

WORKDIR /root