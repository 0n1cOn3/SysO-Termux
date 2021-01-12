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
if [ -x ${HOME}/zipcrick ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing zipcrick... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
git clone https://github.com/Fabr1x/zipcrick
cd ${HOME}/SysO-Termux/full_tools
fi
