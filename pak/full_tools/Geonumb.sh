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
if [ -x ${HOME}/Geonumb ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing Geonumb... ${verde}█
└═══════════════════════┘
"${blanco}
git clone https://github.com/NePtYx2018/Geonumb
cd Geonumb
chmod 777 key.sh
chmod 777 Geonumb.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
