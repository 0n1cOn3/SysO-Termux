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
if [ -x ${HOME}/PassFB ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing PassFB... ${verde}█
└══════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/PassFB
cd PassFB
chmod 711 install.sh
./install.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
