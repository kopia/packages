#!/bin/bash
for a in amd64 arm64 armhf; do
   apt-ftparchive packages -a $a dists/stable/main/binary-$a > dists/stable/main/binary-$a/Packages
   gzip -k -f dists/stable/main/binary-$a/Packages
done

cd dists/stable

apt-ftparchive release \
   -o APT::FTPArchive::Release::Architectures="amd64 arm64 armhf" \
   -o APT::FTPArchive::Release::Codename="stable" \
   -o APT::FTPArchive::Release::Suite="stable" \
   . > Release
