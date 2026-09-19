#!/usr/bin/env bash

docker volume create \
  --opt type=nfs \
  --opt device=:/mnt/storage/media \
  --opt o=addr=truenas.g10.studiop,tcp,rw,noexec,nconnect=16,nfsvers=4 \
  media

docker volume create \
  --opt type=nfs \
  --opt device=:/mnt/storage/downloads \
  --opt o=addr=qnap.studiop,tcp,rw,noexec,nconnect=16,nfsvers=4 \
  downloads
