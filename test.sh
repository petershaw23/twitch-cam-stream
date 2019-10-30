cd "${0%/*}"
echo $PWD
./ffmpeg -nostdin -framerate 4 -re -loop 1 -i bg.jpg -f flv -vcodec h264_omx -pix_fmt yuv420p -r 15 -g 30 "rtmp://live.twitch.tv/app/live_XXXXXXXXXXX"
