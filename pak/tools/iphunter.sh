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
if [ -x ${HOME}/iphunter ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing iphunter... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
cd ${HOME}/SysO-Termux/requirements_tools
unzip iphunter.zip
mv iphunter ${HOME}
cd
cd iphunter
chmod 777 setup.sh
bash setup.sh
pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
