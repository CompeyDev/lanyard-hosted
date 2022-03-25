FROM ubuntu:latest AS build

WORKDIR /app
RUN \
    sudo apt install git \
    git clone https://github.com/Phineas/lanyard . \
    docker run -d --name lanyard-redis -v docker_mount_location_on_host:/data redis \
    docker run --rm -it -p 4001:4001 -e REDIS_HOST=redis -e BOT_TOKEN=$TOKEN --link lanyard-redis:redis phineas/lanyard:latest \
