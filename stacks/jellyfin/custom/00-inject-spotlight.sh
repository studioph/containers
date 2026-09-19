#!/usr/bin/env bash
set -euo pipefail

### Slimmed-down version of the install script to only do the HTML injection

INDEX_FILE=/usr/share/jellyfin/web/index.html
LOADER_TAG='<script src="ui/spotlight-loader.js" data-abyss-spotlight></script>'

if ! grep -q "${LOADER_TAG}" "${INDEX_FILE}"; then
    echo "Injecting loader tag"
    html=$(<"${INDEX_FILE}")
    html=${html/<\/body>/${LOADER_TAG}<\/body>}
    printf "%s" "${html}" > "${INDEX_FILE}"
else
    echo "Loader tag already present"
fi

echo "Finished installing abyss theme"