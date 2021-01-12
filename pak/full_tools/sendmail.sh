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
if [ -x ${HOME}/sendmail ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing sendmail... ${verde}█
└════════════════════════┘
"${blanco}
git clone https://github.com/Fabr1x/sendmail
cd sendmail
chmod 711 sendmail.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
