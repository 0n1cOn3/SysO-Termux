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
if [ -x ${HOME}/MagmaOsint ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
