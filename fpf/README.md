## Background

The purpose of this repo is to build an Ubuntu Jammy package for `conmon`, that
contains a fix that is necessary for Dangerzone to function. For more details,
see https://github.com/freedomofpress/dangerzone/issues/685.

## Build instructions

You can build conmon by changing into this directory and running `./build.sh`.
This script should be an Ubuntu Jammy container image, with all the necessary
build dependencies in order to produce a `conmon` Debian package for Ubuntu
Jammy. The `.deb` files will be copied in this directory.

If you prefer Podman, you can use `./build.sh podman` instead.
