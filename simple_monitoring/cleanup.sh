#! /bin/bash
set -e
echo "removing netdata"

sudo /usr/libexec/netdata/netdata-uninstaller.sh --force --yes

echo "and cleaning-up the system from netdata files..."

sudo rm -rf sudo rm -rf /etc/netdata
sudo rm -rf /var/lib/netdata
sudo rm -rf /var/cache/netdata
sudo rm -rf /var/log/netdata
sudo rm -rf /usr/share/netdata

echo "cleaning the system..."
sudo apt-get autoremove -y
sudo apt-get autoclean
sudo apt-get clean
sudo journalctl --vacuum-time=3d

echo "cleaning finished, good luck."
