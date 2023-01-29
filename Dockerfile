FROM alpine:3.17

COPY entrypoint.sh /entrypoint.sh
RUN apk add clang-extra-tools
RUN apk add python3 && ln -sf python3 /usr/bin/python
RUN apk add git
RUN apk add colordiff

ENTRYPOINT ["/entrypoint.sh"]
