FROM alpine:latest

RUN apk add clang
RUN apk add python3
RUN apk add git
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
