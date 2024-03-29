termux-wake-lock
clear

url=$1
rate=150K
fragments=10

echo "1. Update"
echo "a. Audio"
echo "b. Video"
read n

if [ "$n" = '1' ]; then
	pkg upgrade -y
	python -m pip install --upgrade pip
	pip install -U yt-dlp
	pkg autoclean
	cd ~/bin
	./termux-url-opener $url
else

if [ "$n" = "a" ]; then
  echo "a. Podcast"
  echo "b. Music"
  read x
  if [ "$x" = "a" ]; then
	  cd ~/storage/music/Podcasts/
	  yt-dlp -f 'ba' -x --audio-format m4a $url -o '%(title)s.%(ext)s' --sponsorblock-remove all --throttled-rate $rate --concurrent-fragments $fragments --retries infinite --embed-thumbnail
  else
    cd ~/storage/music/Music/
	  yt-dlp -f 'ba' -x --audio-format m4a $url -o '%(title)s.%(ext)s' --sponsorblock-remove all --throttled-rate $rate --concurrent-fragments $fragments --retries infinite --embed-thumbnail
  fi
else

if [ "$n" = "b" ]; then
	cd ~/storage/movies/Videos/
	yt-dlp -f "bv+ba/b" $url -o '%(title)s.%(ext)s' --sponsorblock-remove all --throttled-rate $rate --concurrent-fragments $fragments --retries infinite --embed-thumbnail --write-subs --write-auto-subs --embed-subs --compat-options no-keep-subs
else
  cd ~/bin
	./termux-url-opener $url
fi
fi
fi
termux-wake-unlock
