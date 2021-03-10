#!/usr/bin/env bash

if [ -z "$(ls -A /superalgos)" ]; then
    echo "Preparing first run... (this will take a while)"
    git clone --depth 1 https://github.com/Superalgos/Superalgos.git /superalgos/.
fi

/usr/local/bin/node run.js noBrowser minMemo
