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
if [ -x ${HOME}/hammer ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing hammer... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pkg install -y nmap
git clone https://github.com/cyweb/hammer
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
