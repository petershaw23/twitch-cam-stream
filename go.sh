cd "${0%/*}"
echo $PWD

sleep 15
# 720p 60 fps (30% CPU)
#./ffmpeg -f video4linux2 -s 1280x720 -framerate 60 -i /dev/video0 -c:v h264_omx -threads 0 -an -f flv -b:v 1500k -bufsize 1500k "rtmp://live.twitch.tv/app/live_XXXXXXXXXXX"

# 720p 30 fps (15% CPU)
./ffmpeg -f video4linux2 -s 1280x720 -framerate 25 -i /dev/video0 -c:v h264_omx -threads 0 -an -f flv -b:v 1500k -bufsize 1500k "rtmp://live.twitch.tv/app/live_XXXXXXXXX"

#  720p 15 fps (10% CPU)
#./ffmpeg -f video4linux2 -s 1280x720 -framerate 15 -i /dev/video0 -c:v h264_omx -threads 0 -an -f flv -b:v 1500k -bufsize 1500k "rtmp://live.twitch.tv/app/live_XXXXXX"


#control via v4lc-ctl
#v4l2-ctl -c rotate=180
#all commands: v4l2-ctl --list-ctrls
#show all settings: v4l2-ctl --all
