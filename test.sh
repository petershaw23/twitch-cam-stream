cd "${0%/*}"
echo $PWD
ffmpeg -re -stream_loop -1 -i bg2.mp4 -c copy -f flv  "rtmp://live.twitch.tv/app/live_XXXXXXXXXXX"
