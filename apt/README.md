APT / Debian Repository
=======================

Repository Configuration
------------------------

```bash
curl -s http://packages.kopia.io/apt/KEY.gpg | sudo apt-key add -
echo "deb http://packages.kopia.io/apt/ /" | sudo tee /etc/apt/sources.list.d/kopia.list
sudo apt update
sudo apt install kopia
sudo apt install kopia-ui
```
