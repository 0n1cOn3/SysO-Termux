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
if [ -x ${HOME}/vigo ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing vigo... ${verde}█
└════════════════════┘
"${blanco}
pkg install -y php
pkg install -y openssh
pkg install -y wget
pkg install -y python
pip install --upgrade pip
git clone https://github.com/InformaticayHacking/vigo
cd ${HOME}/SysO-Termux/full_tools
fi
