FROM debian:stretch-slim

RUN apt update -q -y &&\
    apt install -q -y thin &&\

COPY app.yml /etc/thin2.5/

VOLUME /app

EXPOSE 80

ENTRYPOINT exec ruby /usr/bin/thin start --all /etc/thin2.5
