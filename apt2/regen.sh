#!/bin/bash
cd dists/stable
apt-ftparchive packages -a amd64 main/binary-amd64 > main/binary-amd64/Packages
gzip -k -f main/binary-amd64/Packages
apt-ftparchive release \
   -o APT::FTPArchive::Release::Architectures="amd64 arm64 armhf" \
   -o APT::FTPArchive::Release::Codename="stable" \
   -o APT::FTPArchive::Release::Suite="stable" \
   . > Release
