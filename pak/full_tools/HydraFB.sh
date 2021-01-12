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
if [ -x ${HOME}/HydraFB ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing HydraFB... ${verde}█
└═══════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/HydraFB
cd HydraFB
chmod 711 install.sh
./install.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
