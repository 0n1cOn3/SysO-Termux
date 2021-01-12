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
if [ -x ${HOME}/SETSMS ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing SETSMS... ${verde}█
└══════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/SETSMS
cd SETSMS
chmod 777 install.sh
./install.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
