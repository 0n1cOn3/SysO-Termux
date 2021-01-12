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
if [ -x ${HOME}/SysO-Termux/config/NgrokTH ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing ngrok... ${verde}█
└═════════════════════┘
"${blanco}
cd ${HOME}/SysO-Termux/config
mkdir NgrokTH
cd ${HOME}/SysO-Termux/requirements_tools
chmod 777 ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
cat ngrok > ${PREFIX}/bin/ngrok
chmod 777 ${PREFIX}/bin/ngrok
echo -e -n "${verde}
┌════════════════════════════┐
█ ${blanco}INGRESE SU AUTHTOKEN NGROK ${verde}█
└════════════════════════════┘
┃
└═>>> "${blanco}
read -r authtoken_ngrok
${authtoken_ngrok}
rm ngrok
cd
cd ${HOME}/SysO-Termux/full_tools
fi
