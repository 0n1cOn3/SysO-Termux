#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/already
#
# Code
#
cd
if [ -x ${HOME}/Detector-Short-URL ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌══════════════════════════════════┐
█ ${blanco}Installing Detector-Short-URL... ${verde}█
└══════════════════════════════════┘
"${blanco}
git clone https://github.com/Fabr1x/Detector-Short-URL
cd Detector-Short-URL
chmod 711 detect-shorturl.sh
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
