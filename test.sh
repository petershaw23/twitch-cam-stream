./ffmpeg -framerate 1 -re -loop 1 -i bg.jpg -f flv -vcodec h264_omx "rtmp://live.twitch.tv/app/live_XXXXXXXXXX"
