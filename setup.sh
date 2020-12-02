#!/bin/bash
echo type http proxy server:
read HTTP_PROXY
echo HTTP_PROXY=${HTTP_PROXY} >> config
echo type https proxy server:
read HTTPS_PROXY
echo HTTPS_PROXY=${HTTPS_PROXY} >> config
echo type 
echo ${HTTP_PROXY} ${HTTPS_PROXY}