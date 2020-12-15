#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

mkdir /octoprint && chmod 777 /octoprint
chmod +x octoprint-service && sudo cp octoprint-service /octoprint/
cp dock* /octoprint/
cp octoprint.service /etc/systemd/system/
systemctl enable octoprint
systemctl start octoprint
