#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file
then
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
fi
if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog
    sudo apt upgrade -y 1>>$logfile 2>>$errorlog
fi
