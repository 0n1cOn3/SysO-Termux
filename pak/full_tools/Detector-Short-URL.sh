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
if [ -x ${HOME}/Detector-Short-URL ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════════════┐
█ ${blanco}Installing Detector-Short-URL... ${verde}█
└══════════════════════════════════┘
"${blanco}
git clone https://github.com/Fabr1x/Detector-Short-URL
cd Detector-Short-URL
chmod 711 detect-shorturl.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
