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
if [ -x ${PREFIX}/bin/shodan ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing shodan... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
easy_install shodan
pip install shodan requests
echo -e -n "${verde}
┌════════════════════════════┐
█ ${blanco}INGRESE EL TOKEN DE SHODAN ${verde}█
└════════════════════════════┘
┃    ┌═════════════════════════┐
└═>>>█ REGÍSTRATE => ${blanco}shodan.io ${verde}█
┃    └═════════════════════════┘
┃
└═>>> "${blanco}
read -r tokenshodan
shodan init ${tokenshodan}
cd ${HOME}/SysO-Termux/full_tools
fi
