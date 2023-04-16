#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# SysO-Package
#
# VARIABLES
#
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/Termux
packages=(git,python,python2,wget,pvm,axel,openssh,php,vim,root-repo,unstable-repo,x11-repo,termux-api,clang,fish,ruby,w3m,figlet,cowsay,zip,wcalc,bmon,unrar,toilet,proot,golang,macchanger,httrack,wireless-tools,tree,mlocate,apache2,nodejs,neofetch,irssi,toilet)
#
# Prepare Termux
Termux
# Install Procedure

for package in "${packages[@]}"
do
    if dpkg-query -W "$package" >/dev/null 2>&1; then
        echo -e "${green} ┌═════════════════════════════════════════════┐
        echo -e "$package ${green}is already installed."${white}
        echo -e "${green} └═════════════════════════════════════════════┘
    else
        echo ┌═════════════════════════════════════════════┐
        echo "$package is not installed. Installing now..."
        echo └═════════════════════════════════════════════┘
        sudo apt install -y "$package" > /dev/null 2>&1
    fi
done
