cd "${0%/*}"
echo $PWD

sleep 15

# 720p 30 fps (15% CPU)
./ffmpeg -f video4linux2 -s 1280x720 -framerate 25 -i /dev/video0 -c:v h264_omx -threads 0 -an -f flv -b:v 1500k -bufsize 1500k "rtmp://live.twitch.tv/app/live_XXXXXXXXX"

