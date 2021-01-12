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
if [ -x ${HOME}/PortmapSploit ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}Installing PortmapSploit... ${verde}█
└═════════════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/PortmapSploit
cd PortmapSploit
chmod 711 PortmapSploit.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
