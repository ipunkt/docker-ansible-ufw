FROM debian:stable

ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
RUN apt-get update && apt-get -y install ansible && rm -Rf /var/lib/apt/lists/* && chmod +x /usr/local/bin/confd

WORKDIR /opt/playbook
COPY root/ /
ENTRYPOINT /bin/sh/entrypoint
