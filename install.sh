#!/usr/bin/env bash
set -euo pipefail
BLUE='\e[34m'
NC='\e[0m'

pkg install python ffmpeg
pip install -U yt-dlp
mkdir ~/storage/music/Podcasts/
mkdir ~/storage/music/Music/
mkdir ~/storage/movies/Videos/

echo -e "${BLUE}Setup is complete.${NC}\n\n"
