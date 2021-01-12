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
if [ -x ${PREFIX}/bin/apksigner ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing apksigner... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y apksigner
cd ${HOME}/SysO-Termux/full_tools
fi
