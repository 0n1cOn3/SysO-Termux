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
if [ -x ${HOME}/Webclone ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing Webclone... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y wget
git clone https://github.com/Fabr1x/Webclone
cd Webclone
chmod 711 webclone.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
