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
if [ -x ${HOME}/go ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing gophish... ${verde}█
└═══════════════════════┘
"${blanco}
pkg install -y root-repo
pkg install -y unstable-repo
pkg install -y golang
pkg install -y apache2
go get github.com/gophish/gophish
cd go;cd src;cd github.com;cd gophish;cd gophish
go build
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
