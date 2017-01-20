#!/bin/env bash

sPasswdString=`dd if=/dev/urandom of=/dev/stdout bs=23 count=1 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev`
echo "${sPasswdString}" | parcellite 
echo "${sPasswdString}" | xargs notify-send -u normal -t 8000 'Random Passwor String: '
