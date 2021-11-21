#!/usr/bin/env bash
while true;
do
 curl -s --head http://192.168.64.3:30750 | grep 'Server'
 sleep 1
done