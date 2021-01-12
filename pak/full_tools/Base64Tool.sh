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
if [ -x ${HOME}/Base64Tool ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing Base64Tool... ${verde}█
└══════════════════════════┘
"${blanco}
git clone https://github.com/Fabr1x/Base64Tool
cd Base64Tool
chmod 711 multiexe.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
