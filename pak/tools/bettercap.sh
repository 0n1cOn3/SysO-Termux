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
if [ -x ${PREFIX}/bin/bettercap ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing bettercap... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y bettercap
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
