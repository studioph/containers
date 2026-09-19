ARG QBITTORRENT_VERSION
FROM lscr.io/linuxserver/qbittorrent:${QBITTORRENT_VERSION}-libtorrentv1
ARG VUETORRENT_VERSION

WORKDIR /opt
RUN curl -ssL https://github.com/VueTorrent/VueTorrent/releases/download/${VUETORRENT_VERSION}/vuetorrent.zip | unzip
