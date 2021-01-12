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
if [ -x ${HOME}/MagmaOsint ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing MagmaOsint... ${verde}█
└══════════════════════════┘
"${blanco}
pkg install python
git clone https://github.com/LimerBoy/MagmaOsint
cd MagmaOsint
pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
