#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

S3_PATH=truenas/backup.games/
DOWNLOAD_DIR=/downloads/games

GAME="$1"

lgogdownloader \
    --download \
    --check-free-space \
    --directory "${DOWNLOAD_DIR}" \
    --game "${GAME}"

mcli cp --recursive "${DOWNLOAD_DIR}/${GAME}" "${S3_PATH}"

rm -rf "${DOWNLOAD_DIR}/${GAME}"