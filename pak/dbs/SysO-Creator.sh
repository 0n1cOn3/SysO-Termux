#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# SysO-Creator
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/Termux
#
# Code
#
chmod 777 *.sh
clear
Termux
echo -e -n "${verde}
┌══════════════════════════════┐
█ ${blanco}NEW TOOL ROADMAP ${verde}█
└══════════════════════════════┘

┌═══════════════════════════════════┐
█ [${blanco}01${verde}] ┃ ${blanco}HOME/       ${verde}┃ ${rojo}(tools)      ${verde}█
█═══════════════════════════════════█
█ [${blanco}02${verde}] ┃ ${blanco}HOME/       ${verde}┃ ${rojo}(full_tools) ${verde}█
█═══════════════════════════════════█
█ [${blanco}03${verde}] ┃ ${blanco}PREFIX/bin/ ${verde}┃ ${rojo}(tools)      ${verde}█
█═══════════════════════════════════█
█ [${blanco}04${verde}] ┃ ${blanco}PREFIX/bin/ ${verde}┃ ${rojo}(full_tools) ${verde}█
└═══════════════════════════════════┘
┃
└═>>> "${blanco}
read -r RUTA

if [[ $RUTA == 1 || $RUTA == 01 ]]; then
./SysO-HOME-tools.sh
elif [[ $RUTA == 2 || $RUTA == 02 ]]; then
./SysO-HOME-full_tools.sh
elif [[ $RUTA == 3 || $RUTA == 03 ]]; then
./SysO-PREFIX-bin-tools.sh
elif [[ $RUTA == 4 || $RUTA == 04 ]]; then
./SysO-PREFIX-bin-full_tools.sh
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}OPTION INCORRECT! ${rojo}█
└═════════════════════┘
"${blanco}
sleep 1
source ${HOME}/SysO-Termux/dbs/SysO-Creator.sh
fi
