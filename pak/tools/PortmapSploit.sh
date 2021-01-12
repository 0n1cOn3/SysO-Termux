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
if [ -x ${HOME}/PortmapSploit ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}Installing PortmapSploit... ${verde}█
└═════════════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/PortmapSploit
cd PortmapSploit
chmod 711 PortmapSploit.sh
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
