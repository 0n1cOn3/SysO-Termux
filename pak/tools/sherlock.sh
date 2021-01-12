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
if [ -x ${HOME}/sherlock ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing sherlock... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
pip install torrequest
pip install requests
pip install colorama
pip install requests_futures
python3 -m pip install --upgrade pip
git clone https://github.com/sherlock-project/sherlock
cd sherlock
python -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
