#!/usr/bin/env bash
set -euo pipefail

docker volume create \
  --opt type=nfs \
  --opt device=:/mnt/storage/media \
  --opt o=addr=truenas.g10.studiop,tcp,rw,noexec,nconnect=16 \
  media

docker volume create \
  --opt type=nfs \
  --opt device=:/mnt/storage/dwnloads \
  --opt o=addr=qnap.studiop,tcp,rw,noexec,nconnect=16 \
  downloads
