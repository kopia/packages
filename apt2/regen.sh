#!/bin/bash
cd dists/stable/main/binary-amd64
apt-ftparchive packages . > Packages
gzip -k -f Packages
cd ../..
apt-ftparchive release \
   -o APT::FTPArchive::Release::Architectures="amd64 arm64 armhf" \
   -o APT::FTPArchive::Release::Codename="stable" \
   -o APT::FTPArchive::Release::Suite="stable" \
   . > Release
