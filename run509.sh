#!/bin/bash
ps -ef | grep frpc | awk '{print $2}' | xargs kill -9
nohup /home/liuf/myfrp/frpc -c /home/liuf/myfrp/frpc509.ini &
