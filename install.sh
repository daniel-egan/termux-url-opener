#!/usr/bin/env bash
set -euo pipefail
BLUE='\e[34m'
NC='\e[0m'

pkg install python ffmpeg -y
pip install -U yt-dlp -y
pkg install python-numpy -y
pip install auto-editor
mkdir ~/storage/music/Podcasts/
mkdir ~/storage/music/Music/
mkdir ~/storage/movies/Videos/
mkdir ~/bin/
mv termux-url-opener ~/bin/

echo -e "${BLUE}Setup is complete.${NC}\n\n"
