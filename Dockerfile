FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh
RUN apk add clang
RUN apk add python3
RUN apk add git
RUN apk add colordiff

ENTRYPOINT ["/entrypoint.sh"]
