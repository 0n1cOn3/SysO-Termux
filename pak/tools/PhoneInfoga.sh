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
if [ -x ${HOME}/PhoneInfoga ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}Installing PhoneInfoga... ${verde}█
└═══════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/abhinavkavuri/PhoneInfoga
cd PhoneInfoga
mv config.example.py config.py
python -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
