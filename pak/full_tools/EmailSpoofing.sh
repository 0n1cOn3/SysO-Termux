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
if [ -x ${HOME}/EmailSpoofing ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}Installing EmailSpoofing... ${verde}█
└═════════════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/EmailSpoofing
cd EmailSpoofing
chmod 711 EmailSpoofing.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
