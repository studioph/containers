FROM docker.io/library/ubuntu:26.04

RUN apt update && apt install -y \
    lgogdownloader \
    minio-client

RUN ln -s $(which minio-client) /usr/local/bin/mcli
COPY ./download.sh /

USER 1000
ENV XDG_CONFIG_HOME=/config \
    MC_CONFIG_DIR=/config/.mcli

VOLUME /config
VOLUME /downloads
ENTRYPOINT ["/download.sh"]
