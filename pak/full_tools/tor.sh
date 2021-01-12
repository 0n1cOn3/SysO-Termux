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
if [ -x ${PREFIX}/bin/tor ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing tor... ${verde}█
└═══════════════════┘
"${blanco}
pkg install -y tor
cd ${HOME}/SysO-Termux/full_tools
fi
