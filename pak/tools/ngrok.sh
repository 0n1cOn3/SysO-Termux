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
if [ -x ${HOME}/SysO-Termux/config/NgrokTH ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
