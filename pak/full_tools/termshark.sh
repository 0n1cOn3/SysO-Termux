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
if [ -x ${PREFIX}/bin/termshark ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing termshark... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y unstable-repo
pkg install -y root-repo
pkg install -y termshark
cd ${HOME}/SysO-Termux/full_tools
fi
