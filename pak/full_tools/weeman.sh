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
if [ -x ${HOME}/weeman ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing weeman... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python2
git clone https://github.com/evait-security/weeman
cd weeman
chmod 777 weeman.py
cd
cd ${HOME}/SysO-Termux/full_tools
fi
