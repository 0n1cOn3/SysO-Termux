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
if [ -x ${PREFIX}/bin/hydra ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing hydra... ${verde}█
└═════════════════════┘
"${blanco}
pkg install -y hydra
cd ${HOME}/SysO-Termux/full_tools
fi
