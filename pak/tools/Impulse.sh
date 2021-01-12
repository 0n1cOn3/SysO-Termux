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
if [ -x ${HOME}/Impulse ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
