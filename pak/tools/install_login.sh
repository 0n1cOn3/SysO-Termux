#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
usuario="Informatic_in_Termux"
clave="SysO-Termux"
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/already
#
# FUNCIONES
#
function COINCIDIR {
echo -e "${rojo}
┌════════════════┐
█ ${blanco}¡NO COINCIDEN! ${rojo}█
└════════════════┘
"${blanco}
sleep 1
clear
}
#
# Code
#
cd
if [ -x ${HOME}/SysO-Termux/config/verify ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing Login... ${verde}█
└═════════════════════┘
"${blanco}
pkg install -y pv
pkg install -y fish
cd ${HOME}/SysO-Termux/config
mkdir verify
cd
while :
do
echo -e -n "${verde}
┌════════════════════┐
█ ${blanco}INGRESE UN USUARIO ${verde}█
└════════════════════┘
┃
└═>>> "${blanco}
read -r INGRESE
sleep 0.5
echo -e -n "${verde}
┌═════════════════════┐
█ ${blanco}CONFIRME SU USUARIO ${verde}█
└═════════════════════┘
┃
└═>>> "${blanco}
read -r CONFIRME
sleep 0.5
[ "${CONFIRME}" == "${INGRESE}" ] && break
COINCIDIR
done
while :
do
echo -e -n "${verde}
┌════════════════════════┐
█ ${blanco}INGRESE UNA CONTRASEÑA ${verde}█
└════════════════════════┘
┃
└═>>> "${blanco}
read -r INGRESAR
sleep 0.5
echo -e -n "${verde}
┌════════════════════════┐
█ ${blanco}CONFIRME SU CONTRASEÑA ${verde}█
└════════════════════════┘
┃
└═>>> "${blanco}
read -r CONFIRMAR
sleep 0.5
[ "${CONFIRMAR}" == "${INGRESAR}" ] && break
COINCIDIR
done
if [ "${INGRESE}" == "${CONFIRME}" ]; then
usuario="${INGRESE}"
echo -e "usuario='${usuario}'" >> ${PREFIX}/etc/bash.bashrc
fi
if [ "${INGRESAR}" == "${CONFIRMAR}" ]; then
clave="${INGRESAR}"
echo -e "clave='${clave}'" >> ${PREFIX}/etc/bash.bashrc
fi
echo -e "source ${HOME}/SysO-Termux/config/Colors.sh" >> ${PREFIX}/etc/bash.bashrc
echo -e "source ${HOME}/SysO-Termux/config/Termux" >> ${PREFIX}/etc/bash.bashrc
echo -e "source ${HOME}/SysO-Termux/config/Login" >> ${PREFIX}/etc/bash.bashrc
echo -e "fish" >> ${PREFIX}/etc/bash.bashrc
echo -e "alias salir='exit;exit'" >> ${PREFIX}/etc/bash.bashrc
echo -e "salir" >> ${PREFIX}/etc/bash.bashrc
mv ${PREFIX}/etc/motd ${PREFIX}/etc/motdbackup
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
