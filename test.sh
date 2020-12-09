#!/bin/bash
http_proxy="http://hoge.jp"
https_proxy="https://hoge.jp"
wireless_network_interface_name="wlp1s0"
SSID="ibakosen"

NAME=`iwconfig | grep ${wireless_network_interface_name}`

if [ `echo ${NAME##*ESSID:} | grep ${SSID}` ];then
    echo OK
else
    echo NO
fi
