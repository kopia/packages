#!/bin/bash
apt-ftparchive packages -a amd64 dists/stable/main/binary-amd64 > dists/stable/main/binary-amd64/Packages
gzip -k -f dists/stable/main/binary-amd64/Packages
cd dists/stable

apt-ftparchive release \
   -o APT::FTPArchive::Release::Architectures="amd64 arm64 armhf" \
   -o APT::FTPArchive::Release::Codename="stable" \
   -o APT::FTPArchive::Release::Suite="stable" \
   . > Release
