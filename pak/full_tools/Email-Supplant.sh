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
if [ -x ${HOME}/Email-Supplant ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Installing Email-Supplant... ${verde}█
└══════════════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/Email-Supplant
cd Email-Supplant
chmod 777 Email-Supplant.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
