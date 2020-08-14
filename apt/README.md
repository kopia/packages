APT / Debian Repository
=======================

Repository Configuration
------------------------

```bash
curl -s https://kopia.io/signing-key | sudo apt-key add -
echo "deb http://packages.kopia.io/apt/ stable main" | sudo tee /etc/apt/sources.list.d/kopia.list
sudo apt update
sudo apt install kopia
sudo apt install kopia-ui
```
