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
if [ -x ${HOME}/sherlock ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
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
cd ${HOME}/SysO-Termux/full_tools
fi
