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
if [ -x ${HOME}/seeker ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing seeker... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y php
pkg install -y openssh
pkg install -y wget
pkg install -y python
pip install --upgrade pip
pip install requests
git clone https://github.com/NoracDedsec/seeker
cd seeker
bash install.sh
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
