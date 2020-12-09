#!/bin/bash
HTTP_PROXY="http://hoge.jp"
HTTPS_PROXY="https://hoge.jp"
wireless_network_interface_name="wlp1s0"
SSID="ibakosen"

NAME=`iwconfig ${wireless_network_interface_name} | grep ESSID`

if [ `echo ${NAME##*ESSID:} | grep ${SSID}` ];then
    export http_proxy=${HTTP_PROXY}
    export https_proxy=${HTTPS_PROXY}
    git config --global http.proxy ${http_proxy}
    git config --global https.proxy ${https_proxy}
    alias apt='apt -o Acquire::http::proxy="${http_proxy}"'
else
    export -n http_proxy
    export -n https_proxy
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    unalias apt
fi
