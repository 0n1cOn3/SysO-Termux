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
if [ -x ${HOME}/DoxWeb ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing DoxWeb... ${verde}█
└══════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/DoxWeb
cd DoxWeb
chmod 777 DoxWeb.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
