FROM alpine:3.6
RUN apk --update add bash curl ca-certificates; \
    rm -rf /tmp/* /var/cache/apk/*
COPY files/entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
