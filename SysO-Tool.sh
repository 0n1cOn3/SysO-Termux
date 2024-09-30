#!/bin/bash

# SysO-Tool - V2.0 - 2024
# -----------------------
# Load configurations and color scheme

PWD=$(pwd)
source "${PWD}/Colors.sh"
source "${HOME}/SysO-Termux/config/Termux"

# Clear the screen and display the Termux interface
sleep 0.1
clear
Termux

# Display the menu of tools
echo -e -n "${verde}
┌═══════════════════════════════════════┐
█ [${blanco}01${verde}] ┃ ${blanco}nmap                 ${verde}┃ ${blanco}NO ROOT ${verde}█
█═══════════════════════════════════════█
█ [${blanco}02${verde}] ┃ ${blanco}hydra                ${verde}┃ ${blanco}NO ROOT ${verde}█
█═══════════════════════════════════════█
...
█ [${blanco}92${verde}] ┃ ${blanco}Font                 ${verde}┃ ${blanco}NO ROOT ${verde}█
└═══════════════════════════════════════┘                             
            ┌═════════════┐            
┌══════════<<<█ [${blanco}00${verde}] ┃ ${rojo}EXIT ${verde}█<<<════════┘
┃           └═════════════┘
┃
└═>>> "${blanco}"

# Prompt user for input
read -r TOOL

# Define actions for each tool selection
case $TOOL in
    0|00) exit ;;
    1|01) cd tools && ./nmap.sh ;;
    2|02) cd tools && ./hydra.sh ;;
    3|03) cd tools && ./tor.sh ;;
    4|04) cd tools && ./apksigner.sh ;;
    5|05) cd tools && ./exiftool1.sh ;;
    6|06) cd tools && ./crunch.sh ;;
    7|07) cd tools && ./sqlmap.sh ;;
    8|08) cd tools && ./EvilURL.sh ;;
    9|09) cd tools && ./sherlock.sh ;;
    10) cd tools && ./ScorpFish.sh ;;
    11) cd tools && ./CamPhish.sh ;;
    12) cd tools && ./EmailSpoofing.sh ;;
    13) cd tools && ./HydraFB.sh ;;
    14) cd tools && ./PassFB.sh ;;
    15) cd tools && ./ExifTool.sh ;;
    16) cd tools && ./AIOPhish.sh ;;
    17) cd tools && ./beeth.sh ;;
    18) cd tools && ./GetLink.sh ;;
    19) cd tools && ./Base64Tool.sh ;;
    20) cd tools && ./zipcrick.sh ;;
    21) cd tools && ./Webclone.sh ;;
    22) cd tools && ./Detector-Short-URL.sh ;;
    23) cd tools && ./sendmail.sh ;;
    24) cd tools && ./PhoneInfoga.sh ;;
    25) cd tools && ./hammer.sh ;;
    26) cd tools && ./seeker.sh ;;
    27) cd tools && ./MagmaOsint.sh ;;
    28) cd tools && ./phonia.sh ;;
    29) cd tools && ./kickthemout.sh ;;
    30) cd tools && ./fbi.sh ;;
    31) cd tools && ./TBomb.sh ;;
    32) cd tools && ./websploit.sh ;;
    33) cd tools && ./weeman.sh ;;
    34) cd tools && ./cupp.sh ;;
    35) cd tools && ./PortmapSploit.sh ;;
    36) cd tools && ./Facebook_brute.sh ;;
    37) cd tools && ./wortex.sh ;;
    38) cd tools && ./quack.sh ;;
    39) cd tools && ./jager.sh ;;
    40) cd tools && ./vigo.sh ;;
    41) cd tools && ./Funlett.sh ;;
    42) cd tools && ./YouTube.sh ;;
    43) cd tools && ./DoxWeb.sh ;;
    44) cd tools && ./Geonumb.sh ;;
    45) cd tools && ./HiddenEye.sh ;;
    46) cd tools && ./AresBomb.sh ;;
    47) cd tools && ./TempMail.sh ;;
    48) cd tools && ./ShortUrl.sh ;;
    49) cd tools && ./hacklock.sh ;;
    50) cd tools && ./Falsify.sh ;;
    51) cd tools && ./RED_HAWK.sh ;;
    52) cd tools && ./ScorpFishV2.sh ;;
    53) cd tools && ./wiki-termux.sh ;;
    54) cd tools && ./ngrok.sh ;;
    55) cd tools && ./metasploit.sh ;;
    56) cd tools && ./routersploit.sh ;;
    57) cd tools && ./bettercap.sh ;;
    58) cd tools && ./gophish.sh ;;
    59) cd tools && ./beef.sh ;;
    60) cd tools && ./shodan.sh ;;
    61) cd tools && ./sudo.sh ;;
    62) cd tools && ./Login.sh ;;
    63) cd tools && ./PytermPhish.sh ;;
    64) cd tools && ./SETSMS.sh ;;
    65) cd tools && ./iphunter.sh ;;
    66) cd tools && ./Impulse.sh ;;
    67) cd tools && ./termshark.sh ;;
    68) cd tools && ./netcat.sh ;;
    69) cd tools && ./Optiva-Framework.sh ;;
    70) cd tools && ./Infoga.sh ;;
    71) cd tools && ./UrlWeb.sh ;;
    72) cd tools && ./Gloom-Framework.sh ;;
    73) cd tools && ./hakkuframework.sh ;;
    74) cd tools && ./santet-online.sh ;;
    75) cd tools && ./angryFuzzer.sh ;;
    76) cd tools && ./koroni.sh ;;
    77) cd tools && ./recon-ng.sh ;;
    78) cd tools && ./CamSearch.sh ;;
    79) cd tools && ./KeyBoard.sh ;;
    80) cd tools && ./SysO-Commands.sh ;;
    81) cd tools && ./kit-exploiting-shell.sh ;;
    82) cd tools && ./ofusca.sh ;;
    83) cd tools && ./InstagramOSINT.sh ;;
    84) cd tools && ./Link-Ngrok.sh ;;
    85) cd tools && ./email2phonenumber.sh ;;
    86) cd tools && ./ReconDog.sh ;;
    87) cd tools && ./metagoofil.sh ;;
    88) cd tools && ./Email-Supplant.sh ;;
    89) cd tools && ./evillimiter.sh ;;
    90) cd tools && ./spiderfoot.sh ;;
    91) cd tools && ./instaloader.sh ;;
    92) cd tools && ./Font.sh ;;
    *) echo "Invalid option, please try again." ;;
esac
