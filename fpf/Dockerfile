FROM ubuntu:jammy

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    dpkg-dev debhelper-compat go-md2man golang-go \
    libglib2.0-dev libseccomp-dev libsystemd-dev

RUN mkdir -p /builder/conmon

WORKDIR /builder/conmon
