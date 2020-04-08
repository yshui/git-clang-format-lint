FROM alpine:latest

RUN apk add clang
RUN apk add python3
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
