cd "${0%/*}"
echo $PWD

# 720p 60 fps (30% CPU)
#./ffmpeg -f video4linux2 -s 1280x720 -framerate 60 -i /dev/video0 -c:v h264_om$

# 720p 30 fps (15% CPU)
./ffmpeg -f video4linux2 -s 1280x720 -framerate 25 -i /dev/video0 -c:v h264_omx$

#  720p 15 fps (10% CPU)
#./ffmpeg -f video4linux2 -s 1280x720 -framerate 15 -i /dev/video0 -c:v h264_om$


#control via v4lc-ctl
#v4l2-ctl -c rotate=180
#all commands: v4l2-ctl --list-ctrls
#show all settings: v4l2-ctl --all
