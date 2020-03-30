FROM alpine:3.11

RUN apk add --no-cache brotli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["--help"]
