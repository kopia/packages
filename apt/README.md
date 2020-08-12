APT / Debian Repository
=======================

Repository Configuration
------------------------

```bash
curl -s https://packages.kopia.io/apt/KEY.gpg | sudo apt-key add -
echo "deb https://packages.kopia.io/apt/ stable main" | sudo tee /etc/apt/sources.list.d/kopia.list
sudo apt update
sudo apt install kopia
sudo apt install kopia-ui
```
