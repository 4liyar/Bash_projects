#! /bin/bash
set -e

echo "putting pressure on the system to test the dashboard."
echo "explore your dashboard by visiting http://localhost:19999"

echo "installing tools"
sudo apt-get update
sudo apt-get install stress-ng -y

stress-ng --version
echo "tools installed successfully."

echo "starting 60 seconds of stress test..."
stress-ng --cpu 4 --vm 2 --vm-bytes 1G --hdd-bytes 1G --timeout 60s

echo "test completed! thank you"
