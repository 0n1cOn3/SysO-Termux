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
if [ -x ${HOME}/routersploit ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════════┐
█ ${blanco}Installing routersploit... ${verde}█
└════════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/threat9/routersploit
cd routersploit
python -m pip install -r requirements.txt
python -m pip install -r requirements-dev.txt
chmod +x *setup.py
python setup.py install
cd
cd ${HOME}/SysO-Termux/full_tools
fi
