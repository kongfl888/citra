#!/bin/bash -ex
mkdir -p "$HOME/.ccache"
docker run -v $(pwd):/citra -v "$HOME/.ccache":/root/.ccache citraemu/build-environments:linux-appimage /bin/bash -ex /citra/.ci/linux/docker.sh
