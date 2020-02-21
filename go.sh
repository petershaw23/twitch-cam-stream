cd "${0%/*}"
echo $PWD

sleep 15

# 720p 30 fps (15% CPU)
ffmpeg -f alsa -acodec pcm_s24le -ac 2 -ar 44100 -i hw:1,0 -f video4linux2 -i /dev/video0 -c:v h264_omx -threads 0 -f flv "rtmp://live.twitch.tv/app/"

