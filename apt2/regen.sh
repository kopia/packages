#!/bin/bash
cd dists/stable
apt-ftparchive packages . > Packages
gzip -k -f Packages
apt-ftparchive release \
   -o APT::FTPArchive::Release::Architectures="amd64 arm64 armhf" \
   -o APT::FTPArchive::Release::Codename="stable" \
   . > Release
