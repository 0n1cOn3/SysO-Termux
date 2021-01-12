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
if [ -x ${HOME}/koroni ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing koroni... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y php
git clone https://github.com/DeepSociety/koroni
cd ${HOME}/SysO-Termux/full_tools
fi
