#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    sudo pacman -Syu
fi
if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
    sudo apt update
    sudo apt upgrade -y
fi
