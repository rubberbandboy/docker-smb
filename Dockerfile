FROM alpine:latest

# upgrade base system and install samba and supervisord
RUN apk --no-cache upgrade && apk --no-cache add samba samba-common-tools supervisor

# create a dir for the config and the share
RUN mkdir /config /Shared

# copy config files from project folder to get a default config going for samba and supervisord
COPY *.conf /config/

# volume mappings
VOLUME /config /shared

# exposes samba's default ports (135 for End Point Mapper [DCE/RPC Locator Service],
# 137, 138 for nmbd and 139, 445 for smbd)
EXPOSE 135/tcp 137/udp 138/udp 139/tcp 445/tcp

ENTRYPOINT ["supervisord", "-c", "/config/supervisord.conf"]
