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
if [ -x ${PREFIX}/bin/nmap ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing nmap... ${verde}█
└════════════════════┘
"${blanco}
pkg install -y nmap
cd ${HOME}/SysO-Termux/full_tools
fi
