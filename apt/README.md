APT / Debian Repository
=======================

Repository Configuration
------------------------

```bash
curl -s http://packages.kopia.io/apt/KEY.gpg | sudo apt-key add -
echo "deb http://packages.kopia.io/apt/ /" > /etc/apt/sources.list.d/kopia.list
apt update
apt install kopia
```
