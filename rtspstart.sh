#!/bin/sh
kill `cat rtsp.pid` 
echo 'VLC pid process killed successful, restart multithread app.'
killall -9 vlc && killall -9 rtspstart
echo 'VLC all existing processes was killed successful.'
sudo -u brave cvlc -R -vvv -Ihttp --rtsp-timeout=99999 --file-logging --log-verbose=0 --logfile="/home/brave/Desktop/vlc.log" --vlm-conf /home/brave/Desktop/rtsp.vlm
& echo $! > /home/brave/Desktop/vlc.pid && echo 'Multithread application start successful.'
exit 1

# STREAM: rtsp://admin:zero@94.112.34.47:5554/live/h264/ch01
