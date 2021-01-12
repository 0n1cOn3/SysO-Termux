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
if [ -x ${HOME}/iphunter ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
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
cd ${HOME}/SysO-Termux/full_tools
fi
