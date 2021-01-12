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
if [ -x ${HOME}/CamPhish ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing CamPhish... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y openssh
pkg install -y wget
git clone https://github.com/techchipnet/CamPhish
cd CamPhish
chmod 711 camphish.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
