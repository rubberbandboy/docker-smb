FROM alpine:latest

RUN apk add --no-cache --update \
    samba-common-tools \
    samba-client \
    samba-server \
    tini

COPY smb.conf /etc/samba/smb.conf

EXPOSE 445/tcp

ENTRYPOINT ["/sbin/tini" , "--", "smbd --foreground --log-stdout"]

