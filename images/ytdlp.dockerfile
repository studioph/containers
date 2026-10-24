FROM docker.io/library/alpine:3.24.3

RUN apk update && apk add yt-dlp

VOLUME /download
WORKDIR /download

ENTRYPOINT ["yt-dlp", "--no-cache-dir"]
CMD ["--help"]