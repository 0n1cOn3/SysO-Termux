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
if [ -x ${HOME}/wiki-termux ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}Installing wiki-termux... ${verde}█
└═══════════════════════════┘
"${blanco}
git clone https://github.com/DeepSociety/wiki-termux
cd wiki-termux
chmod 777 wiki
cd
cd ${HOME}/SysO-Termux/full_tools
fi
