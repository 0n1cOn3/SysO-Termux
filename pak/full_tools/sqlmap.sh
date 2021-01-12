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
if [ -x ${PREFIX}/bin/sqlmap ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing sqlmap... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y sqlmap
cd ${HOME}/SysO-Termux/full_tools
fi
