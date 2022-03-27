FROM ubuntu:latest

WORKDIR /app
RUN bash -f build.sh
