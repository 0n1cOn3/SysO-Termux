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
if [ -x ${HOME}/EvilURL ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing EvilURL... ${verde}█
└═══════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/UndeadSec/EvilURL
cd ${HOME}/SysO-Termux/full_tools
fi
