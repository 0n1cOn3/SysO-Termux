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
if [ -x ${HOME}/beeth ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing beeth... ${verde}█
└═════════════════════┘
"${blanco}
pkg install -y php
pkg install -y openssh
pkg install -y wget
git clone https://github.com/DeepSociety/beeth
cd ${HOME}/SysO-Termux/full_tools
fi
