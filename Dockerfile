FROM alpine:3.20.2

RUN apk add clang18-extra-tools
RUN apk add python3 && ln -sf python3 /usr/bin/python
RUN apk add git
RUN apk add colordiff

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
