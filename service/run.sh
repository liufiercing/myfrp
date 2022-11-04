#!/bin/bash
ps -ef | grep frpc | awk '{print $2}' | xargs kill -9
nohup `pwd`/frps_amd86 -c `pwd`/frps_amd86.ini &
