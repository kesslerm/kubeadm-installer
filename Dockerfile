FROM alpine
RUN apk --update add bash curl ca-certificates; \
    rm -rf /tmp/* /var/cache/apk/*
COPY files/entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
