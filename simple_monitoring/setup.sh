#! /bin/bash

set -e
echo "netdata will be installed on this system soon."

sudo apt-get update 
curl -Ss https://get.netdata.cloud/kickstart.sh | bash -s -- --non-interactive



sudo systemctl enable --now netdata
echo "netdata was succesfully installed on your system."
echo "access your dashboard on http://localhost:19999"

echo "written by Abudl Musawer omery"
