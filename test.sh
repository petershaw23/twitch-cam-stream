cd "${0%/*}"
echo $PWD
ffmpeg -re -stream_loop -1 -i bg2.mp4 -c copy -f flv  "rtmp://live.twitch.tv/app/live_468692882_Om70M4YuOXQAByrM5EALU35Tiiqb9z"
