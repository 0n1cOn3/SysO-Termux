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
if [ -x ${HOME}/Impulse ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing Impulse... ${verde}█
└═══════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/LimerBoy/Impulse
cd Impulse
python -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
