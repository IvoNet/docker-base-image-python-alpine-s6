FROM python:3.7.3-alpine3.9

LABEL maintainer="IvoNet.nl"

RUN apk --no-cache --no-progress add bash curl tar \
 && curl -s -L "https://github.com/just-containers/s6-overlay/releases/download/v1.22.1.0/s6-overlay-amd64.tar.gz" | tar xz -C / \
 && apk del --purge tar \
 && rm -rf /tmp/*

ENTRYPOINT ["/init"]
