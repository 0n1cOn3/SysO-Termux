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
cd
if [ -x ${HOME}/hammer ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing hammer... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pkg install -y nmap
git clone https://github.com/cyweb/hammer
cd ${HOME}/SysO-Termux/full_tools
fi
