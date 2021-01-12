#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/already
#
# Code
#
cd
if [ -x ${HOME}/RED_HAWK ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing RED_HAWK... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y wget
pkg install -y nmap
git clone https://github.com/Tuhinshubhra/RED_HAWK
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
