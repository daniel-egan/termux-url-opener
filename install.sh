# https://github.com/rofrol/termux-yt-dlp/blob/bad569cad7f02e7e66d7291ed7c07b9ea3169d96/install.sh
#!/usr/bin/env bash
set -euo pipefail

BLUE='\e[34m'
NC='\e[0m'
YTDLP_CONFIG_FOLDER="${HOME}/.config/yt-dlp/"
TERMUXURLOPENER_CONFIG_FOLDER="${HOME}/bin/"

echo "Hi, This script setup an environment to download various videos from various apps"
sleep 1
echo -e "\n\n${BLUE}Requirements:${NC}"
echo -e "    1. Allow storage access to Termux."
echo -e "    2. A working internet connection.\n\n"
read -p "When you are ready just press enter:"

# Basic setup
termux-setup-storage
sleep 5
pkg update
pkg install python ffmpeg
pip install -U pip
pip install -U wheel
pip install -U yt-dlp
mkdir -p $TERMUXURLOPENER_CONFIG_FOLDER
cp -r -u yt-dlp ~/.config/
cp termux-url-opener "${TERMUXURLOPENER_CONFIG_FOLDER}/"

echo -e "${BLUE}Congratulations!!! Your setup is complete.${NC}\n\n"
