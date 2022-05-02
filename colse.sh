#!/bin/bash
ps -ef | grep frpc | awk '{print $2}' | xargs kill -9
