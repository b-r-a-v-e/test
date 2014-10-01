#!/bin/sh
kill `cat vlc.pid` 
echo 'VLC pid process killed successful, restart multithread app.'
killall -9 vlc && killall -9 rtspstart
echo 'VLC all existing processes was killed successful.'
exit 1
