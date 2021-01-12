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
if [ -x ${HOME}/cupp ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing cupp... ${verde}█
└════════════════════┘
"${blanco}
pkg install -y python
pkg install -y python2
git clone https://github.com/Mebus/cupp.git
cd ${HOME}/SysO-Termux/full_tools
fi
