#!/bin/bash
apt-ftparchive packages . > Packages
gzip -k -f Packages
apt-ftparchive release \
   -o APT::FTPArchive::Release::Architectures="amd64 arm64 armhf" \
   . > Release
