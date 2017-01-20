#!/usr/bin/env bash

dig +short myip.opendns.com @resolver1.opendns.com | xargs notify-send -u normal -t 1000 'Current Public IP: '
