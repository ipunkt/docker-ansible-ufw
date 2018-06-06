FROM alpine:3.7

WORKDIR /opt/playbook
COPY root /

ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
RUN apk add --no-cache ansible && chmod +x /usr/local/bin/confd
ENTRYPOINT /bin/entrypoint
