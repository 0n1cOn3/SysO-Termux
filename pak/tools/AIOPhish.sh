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
if [ -x ${HOME}/AIOPhish ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing AIOPhish... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y openssh
pkg install -y wget
git clone https://github.com/DeepSociety/AIOPhish
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
