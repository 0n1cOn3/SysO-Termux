#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# SysO-Pass
#
# VARIABLES
#
PWD=$(pwd)
green='\033 [32m']
red='\033 [31m']
white='\033 [37m']
#
# CODE
#
cd
echo -e -n "${green}
┌═══════════════┐
█ ${white} NEW USER ${green}█
└═══════════════┘
┃
└═>> "${white}
read -r NewUser
sleep 0.5
echo -e -n "${green}
┌══════════════════┐
█ ${white}NEW PASSWORD ${green}█
└══════════════════┘
┃
└═>> "${white}
read -r NewPass
sleep 0.5
cd && cd ../usr/etc && rm bash.bashrc && cd
cd ${HOME}/SysO-Termux/config
cp bash.bashrc ${PREFIX}/etc
echo -e "user=${NewUser}" >> ${PREFIX}/etc/bash.bashrc
echo -e "key=${NewPass}" >> ${PREFIX}/etc/bash.bashrc
echo -e "source ${HOME}/SysO-Termux/config/Colors.sh" >> ${PREFIX}/etc/bash.bashrc
echo -e "source ${HOME}/SysO-Termux/config/Termux" >> ${PREFIX}/etc/bash.bashrc
echo -e "source ${HOME}/SysO-Termux/config/Login" >> ${PREFIX}/etc/bash.bashrc
echo -e "fish" >> ${PREFIX}/etc/bash.bashrc
echo -e "alias exit='exit;exit'" >> ${PREFIX}/etc/bash.bashrc
echo -e "exit" >> ${PREFIX}/etc/bash.bashrc
echo -e "${green}
┌════════════════════════┐
█ ${white} CHANGED CREDENTIALS ${green}█
└════════════════════════┘
"${white}
