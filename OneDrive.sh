#!/bin/bash

[ -d /usr/local/etc/OneDrive ] && sudo mv -f /usr/local/etc/OneDrive /usr/local/etc/OneDrive.bak
sudo mkdir -p /usr/local/etc/OneDrive
cd /usr/local/etc/OneDrive
sudo wget --no-check-certificate -q -O json-parser "https://raw.githubusercontent.com/jacobgoodo/OneDrive/master/Business/json-parser"
sudo wget --no-check-certificate -q -O onedrive "https://raw.githubusercontent.com/jacobgoodo/OneDrive/master/Business/onedrive"
sudo wget --no-check-certificate -q -O onedrive-d "https://raw.githubusercontent.com/jacobgoodo/OneDrive/master/Business/onedrive-d"
sudo wget --no-check-certificate -q -O onedrive-authorize "https://raw.githubusercontent.com/jacobgoodo/OneDrive/master/Business/onedrive-authorize"
sudo wget --no-check-certificate -q -O onedrive-base "https://raw.githubusercontent.com/jacobgoodo/OneDrive/master/Business/onedrive-base"
sudo wget --no-check-certificate -q -O onedrive.cfg "https://raw.githubusercontent.com/jacobgoodo/OneDrive/master/Business/onedrive.cfg"
sudo chmod -R a+x /usr/local/etc/OneDrive
sudo ln -sf /usr/local/etc/OneDrive/onedrive /usr/local/bin/
sudo ln -sf /usr/local/etc/OneDrive/onedrive-d /usr/local/bin/
[ -d /usr/local/etc/OneDrive.bak ] && {
[ -f /usr/local/etc/OneDrive.bak/onedrive.cfg ] && cp -rf /usr/local/etc/OneDrive.bak/onedrive.cfg /usr/local/etc/OneDrive/
[ -f /usr/local/etc/OneDrive.bak/.refresh_token ] && cp -rf /usr/local/etc/OneDrive.bak/.refresh_token /usr/local/etc/OneDrive/
rm -rf /usr/local/etc/OneDrive.bak
}

rm -rf $(basename "$0")
