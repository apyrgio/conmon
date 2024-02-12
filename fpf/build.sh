#!/bin/sh

set -ex

GIT_ROOT=$(git rev-parse --show-toplevel)
RUNTIME=${1:-docker}

$RUNTIME build --pull -t fpf/builder-conmon .
$RUNTIME run --rm -v ${GIT_ROOT}:/builder/conmon \
    fpf/builder-conmon sh -c 'dpkg-buildpackage -b && mv ../conmon_*\.deb fpf/'

set +x

echo "Debian package built successfully. You can find it under:"
ls -l ${GIT_ROOT}/fpf/conmon*
