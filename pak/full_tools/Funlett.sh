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
if [ -x ${HOME}/Funlett ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing Funlett... ${verde}█
└═══════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/Funlett
cd Funlett
chmod 777 install.sh
./install.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
