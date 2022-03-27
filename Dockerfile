FROM ubuntu:latest

WORKDIR /app
COPY build.sh
RUN bash -f build.sh
