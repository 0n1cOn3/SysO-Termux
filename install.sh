#!/bin/bash

# SysO-Tool - V2.0 - 2024
# -----------------------
# Load color definitions
source "$(pwd)/Colors.sh"

# Constants
USER="TermuxHacking000"
PASSWORD="SysO-Termux"
INSTALL_ZIP="install.zip"

# Function to display messages with a header
function display_header() {
    echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}$1 ${verde}█
└══════════════════════════════┘
${blanco}"
}

# Function to check and set executable permissions on scripts
function set_permissions() {
    local dir="$1"
    chmod 777 "${dir}"/*.sh 2>/dev/null || echo "Failed to set permissions for scripts in ${dir}"
}

# Function to install packages based on user choice
function install_packages() {
    clear
    Termux  # Reset the Termux environment

    display_header "INSTALLER MENU"
    echo -e "┌═════════════════════════════┐     ┌═════════┐"
    echo -e "█ [${blanco}01${verde}] ┃ ${blanco}Install SysO-Termux ${verde}█══>>>█ ${rojo}4.00 GB ${verde}█"
    echo -e "█═════════════════════════════█     └═════════┘"
    echo -e "█ [${blanco}02${verde}] ┃ ${blanco}Select Packages          ${verde}█"
    echo -e "█═════════════════════════════█"
    echo -e "█ [${blanco}03${verde}] ┃ ${blanco}Install Packages...       ${verde}█"
    echo -e "└═════════════════════════════┘"
    echo -e "┃"
    echo -e "└═>>> "
    
    # Read user choice
    read -r choice

    case "$choice" in
        1|01) 
            chmod 711 SysO-Termux.sh
            ./SysO-Termux.sh
            ;;
        2|02) 
            chmod 711 SysO-Tool.sh
            ./SysO-Tool.sh
            ;;
        3|03) 
            chmod 777 SysO-Package.sh
            ./SysO-Package.sh
            ;;
        *) 
            echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}OPTION INCORRECT! ${rojo}█
└═════════════════════┘
${blanco}"
            sleep 1
            install_packages  # Recursive call for incorrect option
            ;;
    esac
}

# Main installation process
function main() {
    sleep 0.5
    clear
    display_header "Updating Repos..."

    # Update and upgrade packages
    if ! apt update && apt upgrade -y; then
        echo "Failed to update package repositories" >&2
        exit 1
    fi

    # Unzip installation files
    if [[ -f "$INSTALL_ZIP" ]]; then
        unzip "$INSTALL_ZIP" || { echo "Failed to unzip $INSTALL_ZIP" >&2; exit 1; }
        rm "$INSTALL_ZIP"
    else
        echo "$INSTALL_ZIP not found!" >&2
        exit 1
    fi

    # Set permissions on scripts in specified directories
    set_permissions "${HOME}/SysO-Termux/tools"
    set_permissions "${HOME}/SysO-Termux/full_tools"
    set_permissions "${HOME}/SysO-Termux/config"
    set_permissions "${HOME}/SysO-Termux"

    # Source the Termux configuration
    source "${HOME}/SysO-Termux/config/Termux"

    # Start the package installation process
    install_packages
}

# Execute the main function
main
