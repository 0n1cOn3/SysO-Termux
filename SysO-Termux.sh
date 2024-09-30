#!/bin/bash

# SysO-Tool - V2.0 - 2024
# -----------------------
# Load color definitions and configuration
PWD=$(pwd)
source "${PWD}/Colors.sh"
source "${HOME}/SysO-Termux/config/Termux"

# Function to display messages
function display_message() {
    echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}$1 ${verde}█
└══════════════════════════════┘
${blanco}"
}

# Function to check and run scripts
function run_script() {
    local script_path="$1"
    if [[ -x "$script_path" ]]; then
        "$script_path" || { echo "Failed to execute $script_path" >&2; exit 1; }
    else
        echo "Script $script_path is not executable or does not exist." >&2
    fi
}

# Main script execution
function main() {
    sleep 0.1
    clear
    cd || exit 1

    display_message "Updating Repos..."
    if ! apt update && apt upgrade -y; then
        echo "Failed to update package repositories" >&2
        exit 1
    fi

    cd "${HOME}/SysO-Termux" || exit 1
    run_script "./SysO-Package.sh"

    cd "${HOME}/SysO-Termux/full_tools" || exit 1
    
    # List of scripts to run
    local scripts=(
        "nmap.sh"
        "hydra.sh"
        "tor.sh"
        "apksigner.sh"
        "exiftool1.sh"
        "crunch.sh"
        "sqlmap.sh"
        "EvilURL.sh"
        "sherlock.sh"
        "ScorpFish.sh"
        "CamPhish.sh"
        "EmailSpoofing.sh"
        "HydraFB.sh"
        "PassFB.sh"
        "ExifTool.sh"
        "AIOPhish.sh"
        "beeth.sh"
        "GetLink.sh"
        "Base64Tool.sh"
        "zipcrick.sh"
        "Webclone.sh"
        "Detector-Short-URL.sh"
        "sendmail.sh"
        "PhoneInfoga.sh"
        "hammer.sh"
        "seeker.sh"
        "MagmaOsint.sh"
        "phonia.sh"
        "kickthemout.sh"
        "fbi.sh"
        "TBomb.sh"
        "websploit.sh"
        "weeman.sh"
        "cupp.sh"
        "PortmapSploit.sh"
        "Facebook_brute.sh"
        "wortex.sh"
        "quack.sh"
        "jager.sh"
        "vigo.sh"
        "Funlett.sh"
        "YouTube.sh"
        "DoxWeb.sh"
        "Geonumb.sh"
        "HiddenEye.sh"
        "AresBomb.sh"
        "TempMail.sh"
        "ShortUrl.sh"
        "hacklock.sh"
        "Falsify.sh"
        "RED_HAWK.sh"
        "ScorpFishV2.sh"
        "wiki-termux.sh"
        "routersploit.sh"
        "bettercap.sh"
        "gophish.sh"
        "PytermPhish.sh"
        "beef.sh"
        "ngrok.sh"
        "shodan.sh"
        "sudo.sh"
        "SETSMS.sh"
        "iphunter.sh"
        "Impulse.sh"
        "termshark.sh"
        "netcat.sh"
        "Optiva-Framework.sh"
        "Infoga.sh"
        "UrlWeb.sh"
        "Gloom-Framework.sh"
        "hakkuframework.sh"
        "santet-online.sh"
        "angryFuzzer.sh"
        "koroni.sh"
        "recon-ng.sh"
        "CamSearch.sh"
        "kit-exploiting-shell.sh"
        "ofusca.sh"
        "InstagramOSINT.sh"
        "Link-Ngrok.sh"
        "email2phonenumber.sh"
        "ReconDog.sh"
        "metagoofil.sh"
        "Email-Supplant.sh"
        "evillimiter.sh"
        "spiderfoot.sh"
        "instaloader.sh"
        "KeyBoard.sh"
        "install_login.sh"
        "SysO-Commands.sh"
        "Font.sh"
    )

    # Run each script in the list
    for script in "${scripts[@]}"; do
        run_script "./$script"
    done

    clear
    Termux # Reset the Termux environment
    ls

    display_message "SysO-Termux Installer"
    echo -e "┃                     ┃"
    echo -e "┃    ┌═══════════┐    ┃"
    echo -e "└═>>>█ ${blanco}SysO-Help ${verde}█<<<═┘"
    echo -e "      └═══════════┘"
}

# Execute the main function
main
