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
sleep 0.5
clear
echo -e -n "${verde}
┌══════════════════════════┐
█ ${blanco}NAME OF THE TOOL ${verde}█
└══════════════════════════┘
┃
└═>>> "${blanco}
read -r NameTool

cp ${HOME}/SysO-Termux/dbs/Copy-PREFIX-bin-tools.sh ${HOME}/SysO-Termux/tools/${NameTool}.sh
cd ${HOME}/SysO-Termux/tools
chmod 777 ${NameTool}.sh
source ${HOME}/SysO-Termux/dbs/SysO-PREFIX-bin-tools.sh
