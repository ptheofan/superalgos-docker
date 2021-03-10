#!/usr/bin/env bash

if [ -z "$(ls -A /superalgos)" ]; then
    echo "Preparing first run... (this will take a while)"
    /usr/bin/rsync -a /superalgos-install/ /superalgos/
fi

/usr/local/bin/node run.js noBrowser minMemo
