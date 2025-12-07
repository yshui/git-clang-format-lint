FROM alpine:3.23

RUN apk add clang21-extra-tools
RUN apk add python3 && ln -sf python3 /usr/bin/python
RUN apk add git
RUN apk add colordiff

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
