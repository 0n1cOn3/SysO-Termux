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
if [ -x ${PREFIX}/bin/exiftool ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing exiftool... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y exiftool
cd ${HOME}/SysO-Termux/full_tools
fi
