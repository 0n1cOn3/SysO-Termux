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
if [ -x ${HOME}/RED_HAWK ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing RED_HAWK... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y wget
pkg install -y nmap
git clone https://github.com/Tuhinshubhra/RED_HAWK
cd ${HOME}/SysO-Termux/full_tools
fi
