#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# Code
#
if [ -x ${HOME}/hacklock ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing hacklock... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y wget
pkg install -y openssh
git clone https://github.com/noob-hackers/hacklock
cd hacklock
chmod 777 hacklock.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
