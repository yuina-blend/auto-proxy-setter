#!/bin/bash

NAME=`iwconfig wlp1s0 | grep ESSID`
echo ${NAME##*ESSID:}