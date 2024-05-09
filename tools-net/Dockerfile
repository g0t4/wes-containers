# syntax=docker/dockerfile:1
FROM ubuntu:latest as base

# copied from consul2 course's swiss image (wanna rethink this, so start here)
# this image is not intended to be a solid base upon which other people can expect specific tools so do not suggest that in courses/videos/etc... for me only
RUN apt-get update && apt-get install -y \
    jq bat grc \
    apache2-utils hey \
    eza \
    icdiff \
    silversearcher-ag \
    unzip \
    curl wget \
    dnsutils iproute2 \
    iputils-ping iputils-arping iputils-tracepath \
    procps psmisc \
    net-tools \
    lshw \
    tcpdump tcpflow \
    && rm -rf /var/lib/apt/lists/*

COPY bashrc.additions /root/.bashrc.additions
RUN cat /root/.bashrc.additions >> /root/.bashrc

# PRN fish shell w/ my customizations?! :)
# similar experience as dld/kubectl-shell for when that isn't available or desirable, or I don't wanna maybe have to install tools again b/c its a new debug container env (randomly cleared)
