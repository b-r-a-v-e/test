#!/bin/sh
ping -c 1 -s 1 -W 1 192.168.1.10 1>/dev/null 2>&1  #The fast way to ping
if [ $? -eq 0 ]; then
   date >> /home/brave/Desktop/ping_fail.log
   rtspstop
   killall -9 rtspstart
   rtspstart
   sleep 30
elif [ $? -ne 0 ]; then
   .
   .
   .
fi
