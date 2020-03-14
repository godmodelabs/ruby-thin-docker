FROM debian:stretch-slim

RUN apt update -q -y &&\
    apt install -q -y thin

COPY app.yaml /etc/thin2.5/

VOLUME /rails_app

EXPOSE 80

ENTRYPOINT exec ruby /usr/bin/thin start --all /etc/thin2.5
