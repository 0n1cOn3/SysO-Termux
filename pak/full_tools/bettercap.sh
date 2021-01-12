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
if [ -x ${PREFIX}/bin/bettercap ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing bettercap... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y bettercap
cd ${HOME}/SysO-Termux/full_tools
fi
