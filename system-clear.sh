#!/bin/bash

# core clean
sudo dpkg --list 'linux-image*'
apt-get purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | head -n -1)

# autoremove
apt-get clean
apt-get autoremove
apt-get autoclean
apt-get autoremove

# cash clear
du -sh /var/cache/apt
apt-get clean

# logs clear
journalctl --disk-usage
sudo journalctl --vacuum-time=3d

# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done

# thubnails cash clear
du -sh ~/.cache/thumbnails
rm -rf ~/.cache/thumbnails/*
